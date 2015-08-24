/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.internal.o;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.multiplayer.Participant;
import java.util.ArrayList;

public final class ParticipantUtils {
    private ParticipantUtils() {
    }

    public static boolean bV(String string) {
        o.b(string, (Object)"Participant ID must not be null");
        return string.startsWith("p_");
    }

    public static String getParticipantId(ArrayList<Participant> arrayList, String string) {
        int n = arrayList.size();
        for (int i = 0; i < n; ++i) {
            Participant participant = arrayList.get(i);
            Player player = participant.getPlayer();
            if (player == null || !player.getPlayerId().equals(string)) continue;
            return participant.getParticipantId();
        }
        return null;
    }
}

