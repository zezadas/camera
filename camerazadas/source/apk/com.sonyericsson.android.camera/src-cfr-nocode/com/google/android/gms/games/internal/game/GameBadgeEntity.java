/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.internal.game.GameBadge;
import com.google.android.gms.games.internal.game.GameBadgeEntityCreator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class GameBadgeEntity
extends GamesDowngradeableSafeParcel
implements GameBadge {
    public static final GameBadgeEntityCreator CREATOR;
    private final int BR;
    private int FD;
    private String Nw;
    private String Tr;
    private Uri Vh;

    static;

    GameBadgeEntity(int var1, int var2, String var3, String var4, Uri var5);

    public GameBadgeEntity(GameBadge var1);

    static int a(GameBadge var0);

    static boolean a(GameBadge var0, Object var1);

    static String b(GameBadge var0);

    static /* synthetic */ boolean b(Integer var0);

    static /* synthetic */ boolean bw(String var0);

    static /* synthetic */ Integer jT();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public String getDescription();

    @Override
    public Uri getIconImageUri();

    @Override
    public String getTitle();

    @Override
    public int getType();

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isDataValid();

    public GameBadge ld();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis ignored.
     */
    static final class GameBadgeEntityCreatorCompat
    extends GameBadgeEntityCreator {
        GameBadgeEntityCreatorCompat();

        @Override
        public GameBadgeEntity ch(Parcel var1);

        @Override
        public /* synthetic */ Object createFromParcel(Parcel var1);
    }

}

