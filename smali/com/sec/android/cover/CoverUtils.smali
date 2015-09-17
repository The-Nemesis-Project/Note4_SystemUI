.class public Lcom/sec/android/cover/CoverUtils;
.super Ljava/lang/Object;
.source "CoverUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/CoverUtils$ASSERT;
    }
.end annotation


# static fields
.field private static final PACKAGE_NAME_MOBILE_CARE:Ljava/lang/String; = "com.samsung.mobilecare"

.field private static final TAG:Ljava/lang/String; = "CoverUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    return-void
.end method

.method public static checkFontStyleChanged(Landroid/content/Context;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const-string v4, "sans.loc"

    .line 143
    .local v4, "SANS_LOC_NAME":Ljava/lang/String;
    const-string v0, "chmod 775 "

    .line 144
    .local v0, "CHMOD_COMMAND":Ljava/lang/String;
    const-string v3, "/data/data/com.android.settings/app_fonts"

    .line 145
    .local v3, "LOC_DIRECTORY":Ljava/lang/String;
    const-string v2, "/data/data1/com.android.settings"

    .line 146
    .local v2, "KNOX_LOC_SETTINGS_DIRECTORY":Ljava/lang/String;
    const-string v1, "/data/data1/com.android.settings/app_fonts"

    .line 147
    .local v1, "KNOX_LOC_DIRECTORY":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v10, "ori":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v5, "dest":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 150
    const-string v11, "CoverUtils"

    const-string v12, "File is not existed."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v11, 0x0

    .line 160
    :goto_0
    return v11

    .line 153
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 154
    .local v8, "modifiedTime":J
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 155
    .local v6, "currentTime":J
    sub-long v12, v6, v8

    const-wide/16 v14, 0x157c

    cmp-long v11, v12, v14

    if-gez v11, :cond_1

    invoke-virtual {v10, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 156
    const-string v11, "CoverUtils"

    const-string v12, "checkFontStyleChanged true"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v11, 0x1

    goto :goto_0

    .line 159
    :cond_1
    const-string v11, "CoverUtils"

    const-string v12, "checkFontStyleChanged false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public static getAppropriateSampleSize(Ljava/lang/String;II)I
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I

    .prologue
    .line 227
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 228
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 229
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 231
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 232
    .local v0, "imageHeight":I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 234
    .local v1, "imageWidth":I
    const/4 v3, 0x1

    .line 235
    .local v3, "sampleSize":I
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 236
    div-int v4, v1, p1

    div-int v5, v0, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 239
    :cond_0
    const-string v4, "CoverUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v4, "CoverUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " imageSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v4, "CoverUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " destSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v4, "CoverUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " sampleSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v3
.end method

.method public static getClockFontPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    const-string v1, "sview_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 276
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "clock_font_path"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFestivalIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "festivalday"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-static {p0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "current_festival_effect_package"

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "mThemePackageName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v2

    .line 172
    :cond_1
    const-string v3, "festivalrespreload2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 173
    .local v0, "mIsTheme":I
    :goto_1
    const-string v3, "CoverUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFestivalIcon() : festivalday="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , Name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v3, "birthday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    if-nez v0, :cond_3

    .line 178
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_birthday:I

    goto :goto_0

    .line 172
    .end local v0    # "mIsTheme":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 180
    .restart local v0    # "mIsTheme":I
    :cond_3
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_birthday:I

    goto :goto_0

    .line 181
    :cond_4
    const-string v3, "chinese_new_year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 182
    if-nez v0, :cond_5

    .line 183
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_cnew_year:I

    goto :goto_0

    .line 185
    :cond_5
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_cnew_year:I

    goto :goto_0

    .line 186
    :cond_6
    const-string v3, "new_year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 187
    if-nez v0, :cond_7

    .line 188
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_new_year:I

    goto :goto_0

    .line 190
    :cond_7
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_new_year:I

    goto :goto_0

    .line 191
    :cond_8
    const-string v3, "lantern"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 192
    if-nez v0, :cond_9

    .line 193
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_lantern:I

    goto :goto_0

    .line 195
    :cond_9
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_lantern:I

    goto :goto_0

    .line 196
    :cond_a
    const-string v3, "chinese_valentine"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 197
    if-nez v0, :cond_b

    .line 198
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_cvalentine:I

    goto/16 :goto_0

    .line 200
    :cond_b
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_cvalentine:I

    goto/16 :goto_0

    .line 201
    :cond_c
    const-string v3, "valentine"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 202
    if-nez v0, :cond_d

    .line 203
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_valentine:I

    goto/16 :goto_0

    .line 205
    :cond_d
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_valentine:I

    goto/16 :goto_0

    .line 206
    :cond_e
    const-string v3, "dragon_boat"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 207
    if-nez v0, :cond_f

    .line 208
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_dragonboat:I

    goto/16 :goto_0

    .line 210
    :cond_f
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_dragonboat:I

    goto/16 :goto_0

    .line 211
    :cond_10
    const-string v3, "mid_autumn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 212
    if-nez v0, :cond_11

    .line 213
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_mid_autumn:I

    goto/16 :goto_0

    .line 215
    :cond_11
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_mid_autumn:I

    goto/16 :goto_0

    .line 216
    :cond_12
    const-string v3, "christmas"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    if-nez v0, :cond_13

    .line 218
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_christmas:I

    goto/16 :goto_0

    .line 220
    :cond_13
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_christmas:I

    goto/16 :goto_0
.end method

.method public static getResourceArray(Landroid/content/Context;I)[I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "arrayId"    # I

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 249
    .local v0, "ar":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 250
    .local v2, "length":I
    new-array v3, v2, [I

    .line 252
    .local v3, "picArray":[I
    const/4 v1, 0x0

    .local v1, "iIdx":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 253
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    return-object v3
.end method

.method public static isCallActive(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 134
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 135
    .local v0, "callState":I
    if-eqz v0, :cond_0

    .line 136
    const/4 v2, 0x1

    .line 138
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isCarMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-static {p0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "car_mode_on"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 73
    const-string v1, "CoverUtils"

    const-string v2, "Cover - Car mode activated."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 54
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    .line 57
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGuestMode()Z
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 62
    .local v0, "currentUser":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKeyGuardMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 36
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const/4 v1, 0x1

    .line 39
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKidsMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-static {p0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "kids_home_mode"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isNetworkRoaming()Z
    .locals 5

    .prologue
    .line 43
    const-string v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "currentplmn":Ljava/lang/String;
    const-string v2, "gsm.operator.isroaming"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "isroaming":Ljava/lang/String;
    const-string v2, "oversea"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    :cond_0
    const-string v2, "CoverUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Roaming network is connected("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v2, 0x1

    .line 49
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 88
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 90
    .local v1, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    const/4 v4, 0x1

    .line 93
    .end local v1    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 99
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 100
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 106
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .line 103
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isSetupWizardRunning(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 126
    :cond_0
    return v0
.end method

.method public static isTPhoneEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-static {p0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "skt_phone20_settings"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static requestDumpUpload(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-string v1, "com.samsung.mobilecare"

    invoke-static {p0, v1}, Lcom/sec/android/cover/CoverUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "CoverUtils"

    const-string v2, "requestDumpUpload : Requesting dump upload to MC..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cover.intent.action.MOBILE_CARE_UPLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    const/4 v1, 0x1

    .line 118
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 116
    :cond_0
    const-string v1, "CoverUtils"

    const-string v2, "requestDumpUpload : MC is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setClockFontPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 264
    const-string v2, "sview_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 267
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 268
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "clock_font_path"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
