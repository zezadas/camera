/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class LedOptionsResolver {
    private static LedOptionsResolver sInstance;
    private Resolver mResolver;

    static;

    private LedOptionsResolver();

    static /* synthetic */ Resolver access$200(LedOptionsResolver var0);

    static /* synthetic */ Resolver access$202(LedOptionsResolver var0, Resolver var1);

    public static LedOptionsResolver getInstance();

    public Flash getDefaultFlash();

    public Flash[] getFlashOptions(ActionMode var1, List<String> var2);

    public int getParameterKeyTextId();

    public int getParameterKeyTitleTextId();

    public PhotoLight[] getPhotoLightOptions(ActionMode var1, List<String> var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class FlashIn
    extends Resolver {
        final /* synthetic */ LedOptionsResolver this$0;

        private FlashIn(LedOptionsResolver var1);

        /* synthetic */ FlashIn(LedOptionsResolver var1,  var2);

        @Override
        public Flash getDefaultFlash();

        @Override
        public Flash[] getFlashOptions(ActionMode var1, List<String> var2);

        @Override
        public int getParameterKeyTextId();

        @Override
        public int getParameterKeyTitleTextId();

        @Override
        public PhotoLight[] getPhotoLightOptions(ActionMode var1, List<String> var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class FlashNotSupported
    extends PhotoLightIn {
        final /* synthetic */ LedOptionsResolver this$0;

        private FlashNotSupported(LedOptionsResolver var1);

        /* synthetic */ FlashNotSupported(LedOptionsResolver var1,  var2);

        @Override
        public Flash[] getFlashOptions(ActionMode var1, List<String> var2);

        @Override
        public PhotoLight[] getPhotoLightOptions(ActionMode var1, List<String> var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class PhotoLightIn
    extends Resolver {
        final /* synthetic */ LedOptionsResolver this$0;

        private PhotoLightIn(LedOptionsResolver var1);

        /* synthetic */ PhotoLightIn(LedOptionsResolver var1,  var2);

        @Override
        public Flash getDefaultFlash();

        @Override
        public Flash[] getFlashOptions(ActionMode var1, List<String> var2);

        @Override
        public int getParameterKeyTextId();

        @Override
        public int getParameterKeyTitleTextId();

        @Override
        public PhotoLight[] getPhotoLightOptions(ActionMode var1, List<String> var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class Resolver {
        final /* synthetic */ LedOptionsResolver this$0;

        private Resolver(LedOptionsResolver var1);

        /* synthetic */ Resolver(LedOptionsResolver var1,  var2);

        public abstract Flash getDefaultFlash();

        public abstract Flash[] getFlashOptions(ActionMode var1, List<String> var2);

        public abstract int getParameterKeyTextId();

        public abstract int getParameterKeyTitleTextId();

        public abstract PhotoLight[] getPhotoLightOptions(ActionMode var1, List<String> var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class Unsolved
    extends Resolver {
        final /* synthetic */ LedOptionsResolver this$0;

        private Unsolved(LedOptionsResolver var1);

        /* synthetic */ Unsolved(LedOptionsResolver var1,  var2);

        private Resolver getResolver(int var1, List<String> var2);

        @Override
        public Flash getDefaultFlash();

        @Override
        public Flash[] getFlashOptions(ActionMode var1, List<String> var2);

        @Override
        public int getParameterKeyTextId();

        @Override
        public int getParameterKeyTitleTextId();

        @Override
        public PhotoLight[] getPhotoLightOptions(ActionMode var1, List<String> var2);
    }

}

