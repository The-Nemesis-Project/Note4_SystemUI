.class final Lcom/android/keyguard/KeyguardStatusView$Patterns;
.super Ljava/lang/Object;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Patterns"
.end annotation


# static fields
.field static cacheKey:Ljava/lang/String;

.field static clockView12:Ljava/lang/String;

.field static clockView24:Ljava/lang/String;

.field static dateView:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static update(Landroid/content/Context;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hasAlarm"    # Z

    .prologue
    const v11, 0xee01

    const/16 v10, 0x3a

    .line 224
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 225
    .local v5, "locale":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 226
    .local v6, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_3

    sget v7, Lcom/android/keyguard/R$string;->abbrev_wday_month_day_no_year_alarm:I

    :goto_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "dateViewSkel":Ljava/lang/String;
    sget v7, Lcom/android/keyguard/R$string;->clock_12hr_format:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "clockView12Skel":Ljava/lang/String;
    sget v7, Lcom/android/keyguard/R$string;->clock_24hr_format:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "clockView24Skel":Ljava/lang/String;
    const v7, 0x1120096

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "date_format"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "dateformat":Ljava/lang/String;
    sget-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v3, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    .end local v3    # "dateformat":Ljava/lang/String;
    :cond_0
    sput-object v3, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    .line 246
    :goto_1
    invoke-static {v5, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    .line 249
    const-string v7, "a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 250
    sget-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    const-string v8, "a"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    .line 253
    :cond_1
    invoke-static {v5, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    .line 256
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v7

    if-nez v7, :cond_2

    .line 257
    sget-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    .line 258
    sget-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    .line 261
    :cond_2
    return-void

    .line 226
    .end local v0    # "clockView12Skel":Ljava/lang/String;
    .end local v1    # "clockView24Skel":Ljava/lang/String;
    .end local v2    # "dateViewSkel":Ljava/lang/String;
    :cond_3
    sget v7, Lcom/android/keyguard/R$string;->abbrev_wday_month_day_no_year:I

    goto :goto_0

    .line 237
    .restart local v0    # "clockView12Skel":Ljava/lang/String;
    .restart local v1    # "clockView24Skel":Ljava/lang/String;
    .restart local v2    # "dateViewSkel":Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "key":Ljava/lang/String;
    sget-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->cacheKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 242
    invoke-static {v5, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    .line 243
    sput-object v4, Lcom/android/keyguard/KeyguardStatusView$Patterns;->cacheKey:Ljava/lang/String;

    goto :goto_1
.end method
