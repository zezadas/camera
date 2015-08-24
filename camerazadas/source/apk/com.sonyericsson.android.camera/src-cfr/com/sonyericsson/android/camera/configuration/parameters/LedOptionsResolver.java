/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import java.util.List;

public class LedOptionsResolver {
    private static LedOptionsResolver sInstance = new LedOptionsResolver();
    private Resolver mResolver;

    private LedOptionsResolver() {
        this.mResolver = new Unsolved();
    }

    public static LedOptionsResolver getInstance() {
        return sInstance;
    }

    public Flash getDefaultFlash() {
        return this.mResolver.getDefaultFlash();
    }

    public Flash[] getFlashOptions(ActionMode actionMode, List<String> list) {
        if (list == null || list.size() == 0) {
            return new Flash[0];
        }
        return this.mResolver.getFlashOptions(actionMode, list);
    }

    public int getParameterKeyTextId() {
        return this.mResolver.getParameterKeyTextId();
    }

    public int getParameterKeyTitleTextId() {
        return this.mResolver.getParameterKeyTitleTextId();
    }

    public PhotoLight[] getPhotoLightOptions(ActionMode actionMode, List<String> list) {
        return this.mResolver.getPhotoLightOptions(actionMode, list);
    }

    private class FlashIn
    extends Resolver {
        private FlashIn() {
            super();
        }

        @Override
        public Flash getDefaultFlash() {
            return Flash.AUTO;
        }

        @Override
        public Flash[] getFlashOptions(ActionMode actionMode, List<String> list) {
            if (actionMode.mType == 2) {
                return new Flash[0];
            }
            return new Flash[]{Flash.AUTO, Flash.ON, Flash.RED_EYE, Flash.OFF, Flash.LED_ON};
        }

        @Override
        public int getParameterKeyTextId() {
            return 2131296315;
        }

        @Override
        public int getParameterKeyTitleTextId() {
            return 2131296418;
        }

        @Override
        public PhotoLight[] getPhotoLightOptions(ActionMode actionMode, List<String> list) {
            if (actionMode.mType == 2) {
                return PhotoLight.values();
            }
            return new PhotoLight[0];
        }
    }

    private class FlashNotSupported
    extends PhotoLightIn {
        private FlashNotSupported() {
            super();
        }

        @Override
        public Flash[] getFlashOptions(ActionMode actionMode, List<String> list) {
            if (actionMode.mType == 2) {
                return new Flash[0];
            }
            return new Flash[]{Flash.PHOTO_LIGHT_ON_AS_FLASH, Flash.LED_OFF};
        }

        @Override
        public PhotoLight[] getPhotoLightOptions(ActionMode actionMode, List<String> list) {
            if (actionMode.mType == 2) {
                return PhotoLight.values();
            }
            return new PhotoLight[0];
        }
    }

    private class PhotoLightIn
    extends Resolver {
        private PhotoLightIn() {
            super();
        }

        @Override
        public Flash getDefaultFlash() {
            return Flash.LED_OFF;
        }

        @Override
        public Flash[] getFlashOptions(ActionMode actionMode, List<String> list) {
            return new Flash[0];
        }

        @Override
        public int getParameterKeyTextId() {
            return 2131296513;
        }

        @Override
        public int getParameterKeyTitleTextId() {
            return 2131296513;
        }

        @Override
        public PhotoLight[] getPhotoLightOptions(ActionMode actionMode, List<String> list) {
            return PhotoLight.values();
        }
    }

    private abstract class Resolver {
        private Resolver() {
        }

        public abstract Flash getDefaultFlash();

        public abstract Flash[] getFlashOptions(ActionMode var1, List<String> var2);

        public abstract int getParameterKeyTextId();

        public abstract int getParameterKeyTitleTextId();

        public abstract PhotoLight[] getPhotoLightOptions(ActionMode var1, List<String> var2);
    }

    private class Unsolved
    extends Resolver {
        private Unsolved() {
        }

        private Resolver getResolver(int n, List<String> object) {
            if (!(object == null || object.isEmpty())) {
                for (String string : object) {
                    if (Flash.ON.getValue().equals(string)) {
                        return new FlashIn();
                    }
                    if (!Flash.LED_ON.getValue().equals(string)) continue;
                    if (n == 1) {
                        return new FlashNotSupported();
                    }
                    return new PhotoLightIn();
                }
            }
            return null;
        }

        @Override
        public Flash getDefaultFlash() {
            Resolver resolver = this.getResolver(1, HardwareCapability.getCapability((int)0).FLASH.get());
            if (resolver != null) {
                LedOptionsResolver.this.mResolver = resolver;
                return LedOptionsResolver.this.mResolver.getDefaultFlash();
            }
            return Flash.LED_OFF;
        }

        @Override
        public Flash[] getFlashOptions(ActionMode actionMode, List<String> list) {
            Resolver resolver = this.getResolver(actionMode.mType, list);
            if (resolver != null) {
                LedOptionsResolver.this.mResolver = resolver;
                return LedOptionsResolver.this.mResolver.getFlashOptions(actionMode, list);
            }
            return new Flash[0];
        }

        @Override
        public int getParameterKeyTextId() {
            return -1;
        }

        @Override
        public int getParameterKeyTitleTextId() {
            return -1;
        }

        @Override
        public PhotoLight[] getPhotoLightOptions(ActionMode actionMode, List<String> list) {
            Resolver resolver = this.getResolver(actionMode.mType, list);
            if (resolver != null) {
                LedOptionsResolver.this.mResolver = resolver;
                return LedOptionsResolver.this.mResolver.getPhotoLightOptions(actionMode, list);
            }
            return new PhotoLight[0];
        }
    }

}

