/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.event;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.event.Event;
import com.google.android.gms.games.event.EventEntityCreator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class EventEntity
implements SafeParcelable,
Event {
    public static final EventEntityCreator CREATOR;
    private final int BR;
    private final String Tr;
    private final Uri Vh;
    private final String Vs;
    private final PlayerEntity Wh;
    private final String Wm;
    private final long Wn;
    private final String Wo;
    private final boolean Wp;
    private final String mName;

    static;

    EventEntity(int var1, String var2, String var3, String var4, Uri var5, String var6, Player var7, long var8, String var10, boolean var11);

    public EventEntity(Event var1);

    static int a(Event var0);

    static boolean a(Event var0, Object var1);

    static String b(Event var0);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public Event freeze();

    @Override
    public String getDescription();

    @Override
    public void getDescription(CharArrayBuffer var1);

    @Override
    public String getEventId();

    @Override
    public String getFormattedValue();

    @Override
    public void getFormattedValue(CharArrayBuffer var1);

    @Override
    public Uri getIconImageUri();

    @Override
    public String getIconImageUrl();

    @Override
    public String getName();

    @Override
    public void getName(CharArrayBuffer var1);

    @Override
    public Player getPlayer();

    @Override
    public long getValue();

    public int getVersionCode();

    public int hashCode();

    @Override
    public boolean isDataValid();

    @Override
    public boolean isVisible();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

