package com.t10.game;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import com.yoyogames.runner.RunnerJNILib;

public class SysMem {
    public static double SysMem_getTotalMemMB() {
        try {
            Context ctx = RunnerJNILib.ms_context;
            if (ctx == null) return -1.0;
            ActivityManager am = (ActivityManager) ctx.getSystemService(Context.ACTIVITY_SERVICE);
            ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
            am.getMemoryInfo(mi);
            return mi.totalMem / 1048576.0;
        } catch (Exception e) {
            return -1.0;
        }
    }
    public static String SysMem_getSoc() {
        try {
            String soc = Build.SOC_MODEL;
            if (soc == null || soc.isEmpty()) soc = Build.HARDWARE;
            return soc;
        } catch (Exception e) {
            return "";
        }
    }
}
