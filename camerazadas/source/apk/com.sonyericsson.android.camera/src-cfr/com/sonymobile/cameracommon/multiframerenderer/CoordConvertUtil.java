/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import android.graphics.Point;
import android.graphics.PointF;
import android.opengl.GLU;
import android.opengl.Matrix;

public class CoordConvertUtil {
    private static final float[] sIdentityMatrix = new float[16];

    static {
        Matrix.setIdentityM(sIdentityMatrix, 0);
    }

    private static float[] getCrossCoordWithPlaneAndLine(float f, float f2, float f3, float f4, float[] arrf, float[] arrf2) {
        float[] arrf3 = new float[]{arrf2[0] - arrf[0], arrf2[1] - arrf[1], arrf2[2] - arrf[2], arrf2[3] - arrf[3]};
        float f5 = arrf3[0] * f + arrf3[1] * f2 + arrf3[2] * f3;
        if (f5 == 0.0f) {
            return null;
        }
        f = (f4 - (arrf[0] * f + arrf[1] * f2 + arrf[2] * f3)) / f5;
        return new float[]{arrf[0] + arrf3[0] * f, arrf[1] + arrf3[1] * f, arrf[2] + arrf3[2] * f, arrf[3] + arrf3[3] * f};
    }

    public static PointF getObjectCoord(float f, float f2, float[] arrf, float[] arrf2, int[] arrn, float[] arrf3) {
        float[] arrf4;
        float[] arrf5;
        float[] arrf6;
        arrf2 = (float[])arrf2.clone();
        float[] arrf7 = arrf6 = new float[4];
        arrf7[0] = 0.0f;
        arrf7[1] = 0.0f;
        arrf7[2] = 0.0f;
        arrf7[3] = 1.0f;
        float[] arrf8 = arrf5 = new float[4];
        arrf8[0] = -1.0f;
        arrf8[1] = 1.0f;
        arrf8[2] = 0.0f;
        arrf8[3] = 1.0f;
        float[] arrf9 = arrf4 = new float[4];
        arrf9[0] = 1.0f;
        arrf9[1] = 1.0f;
        arrf9[2] = 0.0f;
        arrf9[3] = 1.0f;
        Matrix.multiplyMV(arrf6, 0, arrf2, 0, arrf6, 0);
        Matrix.multiplyMV(arrf5, 0, arrf2, 0, arrf5, 0);
        Matrix.multiplyMV(arrf4, 0, arrf2, 0, arrf4, 0);
        float[] arrf10 = new float[]{arrf5[0] - arrf6[0], arrf5[1] - arrf6[1], arrf5[2] - arrf6[2]};
        arrf5 = new float[]{arrf4[0] - arrf6[0], arrf4[1] - arrf6[1], arrf4[2] - arrf6[2]};
        arrf4 = new float[]{arrf10[1] * arrf5[2] - arrf10[2] * arrf5[1], arrf10[2] * arrf5[0] - arrf10[0] * arrf5[2], arrf10[0] * arrf5[1] - arrf10[1] * arrf5[0]};
        float f3 = arrf4[0];
        float f4 = arrf6[0];
        float f5 = arrf4[1];
        float f6 = arrf6[1];
        float f7 = arrf4[2];
        float f8 = arrf6[2];
        float f9 = arrn[3] + arrn[1] * 2;
        float f10 = arrn[1];
        f2 = (f9 - f2 - f10) / (float)arrn[3];
        arrn = (int[])new float[4];
        arrn[0] = (int)((f/=(float)arrn[2]) * 2.0f - 1.0f);
        arrn[1] = (int)(f2 * 2.0f - 1.0f);
        arrn[2] = (int)0.0f;
        arrn[3] = (int)1.0f;
        Matrix.multiplyMV(arrn, 0, arrf, 0, arrn, 0);
        arrf6 = new float[]{arrf3[0], arrf3[1], arrf3[2], 1.0f};
        Matrix.multiplyMV(arrf6, 0, arrf, 0, arrf6, 0);
        arrf = CoordConvertUtil.getCrossCoordWithPlaneAndLine(arrf4[0], arrf4[1], arrf4[2], f3 * f4 + f5 * f6 + f7 * f8, arrf6, arrn);
        if (arrf == null) {
            return null;
        }
        Matrix.invertM(arrf2, 0, arrf2, 0);
        Matrix.multiplyMV(arrf, 0, arrf2, 0, arrf, 0);
        return new PointF(arrf[0], arrf[1]);
    }

    public static Point getWindowCoord(float f, float f2, float f3, float[] arrf, int[] arrn) {
        float[] arrf2 = new float[3];
        GLU.gluProject(f, f2, f3, arrf, 0, sIdentityMatrix, 0, arrn, 0, arrf2, 0);
        arrf2[1] = (float)(arrn[3] + arrn[1] * 2) - arrf2[1];
        return new Point((int)arrf2[0], (int)arrf2[1]);
    }
}

