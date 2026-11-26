package dev.inlights.stellarsurfer.client;

import dev.overgrown.origins.client.screen.OriginDisplayScreen;
import dev.overgrown.origins.origin.Origin;
import net.minecraft.resources.ResourceLocation;
import net.neoforged.neoforge.client.event.ScreenEvent;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * Stellar Surfer skin for the Origins choose/view window, ONLY while the Stellar Surfer origin is displayed:
 * the window's texture set is swapped for ours, and the player's own Origins theme comes back as soon as another origin
 * is shown. No Origins texture is overwritten, so other origins and other packs are never affected.
 * Only used with Origins 1.52 and older: from 1.53 the same textures are applied by the origin's "custom_gui".
 */
public final class OriginSkin {
    private static final ResourceLocation STELLAR = ResourceLocation.fromNamespaceAndPath("stlboy", "stellarsurfer");
    private static final Map<OriginDisplayScreen, Object> ORIGINAL = new WeakHashMap<>();
    private static Field texField;
    private static Object ours;
    private static boolean broken = themedOrigins();

    private OriginSkin() {}

    /** Origins 1.53+ themes the window from the origin's own "custom_gui" (set in the datapack), so this layer steps aside. */
    private static boolean themedOrigins() {
        try {
            Origin.class.getMethod("gui");
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    private static ResourceLocation t(String p) { return ResourceLocation.fromNamespaceAndPath("stlboy", "textures/gui/origin/" + p + ".png"); }

    private static void setup() throws ReflectiveOperationException {
        if (texField != null) return;
        Field f = OriginDisplayScreen.class.getDeclaredField("tex");
        f.setAccessible(true);
        Class<?> gt = f.getType();
        Constructor<?> c = gt.getDeclaredConstructor(ResourceLocation.class, ResourceLocation.class, ResourceLocation.class,
                ResourceLocation.class, ResourceLocation.class, ResourceLocation.class, ResourceLocation[].class);
        c.setAccessible(true);
        ours = c.newInstance(t("background"), t("border"), t("name_plate"), t("scroll_bar/slot"), t("scroll_bar"), t("scroll_bar/pressed"),
                new ResourceLocation[]{t("impact/none"), t("impact/low"), t("impact/medium"), t("impact/high")});
        texField = f;
    }

    static void onRenderPre(ScreenEvent.Render.Pre event) {
        if (broken || !(event.getScreen() instanceof OriginDisplayScreen screen)) return;
        try {
            setup();
            Origin o = screen.getCurrentOrigin();
            boolean stellar = o != null && STELLAR.equals(o.id());
            Object cur = texField.get(screen);
            if (stellar) {
                if (cur != ours) { ORIGINAL.put(screen, cur); texField.set(screen, ours); }
            } else if (cur == ours) {
                Object orig = ORIGINAL.remove(screen);
                if (orig != null) texField.set(screen, orig);
            }
        } catch (Throwable t) {
            broken = true;
            ClientSetup.LOG.error("Stellar Surfer origin skin disabled (Origins changed?)", t);
        }
    }
}
