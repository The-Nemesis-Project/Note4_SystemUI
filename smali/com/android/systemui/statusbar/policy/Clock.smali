.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# static fields
.field private static final AM_PM_STYLE:I = 0x2

.field private static final AM_PM_STYLE_GONE:I = 0x2

.field private static final AM_PM_STYLE_NORMAL:I = 0x0

.field private static final AM_PM_STYLE_SMALL:I = 0x1

.field private static final DEBUG:Z = true

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-Clock"


# instance fields
.field private mAttached:Z

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mDemoMode:Z

.field private mExpandedHeader:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    sget-object v1, Lcom/android/systemui/R$styleable;->Clock:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mExpandedHeader:Z

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private final getSmallTime(Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 21
    .param p1, "mCalendar"    # Ljava/util/Calendar;

    .prologue
    .line 179
    const-string v18, "STATUSBAR-Clock"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSmallTime:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 184
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/Clock;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    .line 185
    .local v12, "is24":Z
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v8

    .line 187
    .local v8, "d":Llibcore/icu/LocaleData;
    const v2, 0xef00

    .line 188
    .local v2, "MAGIC1":C
    const v3, 0xef01

    .line 191
    .local v3, "MAGIC2":C
    if-eqz v12, :cond_2

    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat24:Ljava/lang/String;

    .line 192
    .local v9, "format":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 199
    const/4 v4, -0x1

    .line 200
    .local v4, "a":I
    const/4 v15, 0x0

    .line 201
    .local v15, "quoted":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    .line 202
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 204
    .local v6, "c":C
    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v6, v0, :cond_0

    .line 205
    if-nez v15, :cond_3

    const/4 v15, 0x1

    .line 207
    :cond_0
    :goto_2
    if-nez v15, :cond_4

    const/16 v18, 0x61

    move/from16 v0, v18

    if-ne v6, v0, :cond_4

    .line 208
    move v4, v11

    .line 213
    .end local v6    # "c":C
    :cond_1
    if-ltz v4, :cond_6

    .line 215
    move v5, v4

    .line 216
    .local v5, "b":I
    :goto_3
    if-lez v4, :cond_5

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 217
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 191
    .end local v4    # "a":I
    .end local v5    # "b":I
    .end local v9    # "format":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v15    # "quoted":Z
    :cond_2
    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat12:Ljava/lang/String;

    goto :goto_0

    .line 205
    .restart local v4    # "a":I
    .restart local v6    # "c":C
    .restart local v9    # "format":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v15    # "quoted":Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .line 201
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 219
    .end local v6    # "c":C
    .restart local v5    # "b":I
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0xef00

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "a"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0xef01

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v5, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 223
    .end local v5    # "b":I
    :cond_6
    new-instance v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v17, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 224
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    .line 229
    .end local v4    # "a":I
    .end local v11    # "i":I
    .end local v15    # "quoted":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 232
    .local v16, "result":Ljava/lang/String;
    const v18, 0xef00

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 233
    .local v13, "magic1":I
    const v18, 0xef01

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 234
    .local v14, "magic2":I
    if-ltz v13, :cond_8

    if-le v14, v13, :cond_8

    .line 235
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 237
    .local v10, "formatted":Landroid/text/SpannableStringBuilder;
    add-int/lit8 v18, v14, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 251
    .end local v10    # "formatted":Landroid/text/SpannableStringBuilder;
    :goto_5
    return-object v10

    .line 226
    .end local v13    # "magic1":I
    .end local v14    # "magic2":I
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_7
    new-instance v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 227
    .restart local v17    # "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    goto :goto_4

    .restart local v13    # "magic1":I
    .restart local v14    # "magic2":I
    .restart local v16    # "result":Ljava/lang/String;
    :cond_8
    move-object/from16 v10, v16

    .line 251
    goto :goto_5
.end method

.method private static is24HourFormat(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    const/4 v7, -0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 293
    .local v0, "locale":Ljava/util/Locale;
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 297
    .local v1, "natural":Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_1

    move-object v3, v1

    .line 298
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 299
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "pattern":Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 302
    const-string v4, "24"

    .line 310
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 313
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "natural":Ljava/text/DateFormat;
    :goto_1
    return v5

    .line 304
    .restart local v0    # "locale":Ljava/util/Locale;
    .restart local v1    # "natural":Ljava/text/DateFormat;
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v4, "12"

    goto :goto_0

    .line 307
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v4, "12"

    goto :goto_0

    .line 313
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "natural":Ljava/text/DateFormat;
    :cond_2
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 259
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 261
    .local v2, "mCalendar":Ljava/util/Calendar;
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-nez v5, :cond_1

    const-string v5, "enter"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 262
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v5, :cond_2

    const-string v5, "exit"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    goto :goto_0

    .line 266
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v5, :cond_0

    const-string v5, "clock"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    const-string v5, "millis"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "millis":Ljava/lang/String;
    const-string v5, "hhmm"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "hhmm":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 270
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 277
    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime(Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 271
    :cond_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 272
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 273
    .local v0, "hh":I
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 274
    .local v4, "mm":I
    const/16 v5, 0xa

    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 275
    const/16 v5, 0xc

    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 85
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 102
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 111
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 125
    .local v4, "mCalendar":Ljava/util/Calendar;
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    if-eqz v10, :cond_0

    .line 126
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 128
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 131
    const-string v10, "STATUSBAR-Clock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateClock:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mCalendar.getTimeZone():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " TimeZone.getDefault():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 141
    .local v1, "context":Landroid/content/Context;
    const-string v0, ""

    .line 142
    .local v0, "AM_PM":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/Clock;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 143
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "currentLanguage":Ljava/lang/String;
    const-string v10, "en_GB"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 147
    const-string v10, "aa"

    invoke-static {v10, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .end local v2    # "currentLanguage":Ljava/lang/String;
    :cond_1
    :goto_0
    const v10, 0x7f0d01c4

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime(Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v11, v14

    const/4 v12, 0x1

    aput-object v0, v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 156
    .local v9, "timeText":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 157
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 160
    :cond_2
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/Clock;->mExpandedHeader:Z

    if-eqz v10, :cond_5

    .line 161
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 162
    .local v3, "formatted":Landroid/text/SpannableStringBuilder;
    const/high16 v7, 0x3f000000    # 0.5f

    .line 163
    .local v7, "proportion":F
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mIsMacchiato:Z

    if-eqz v10, :cond_3

    .line 164
    const v7, 0x3f170a3d    # 0.59f

    .line 166
    :cond_3
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 167
    .local v5, "magic1":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 168
    .local v6, "magic2":I
    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v8, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 169
    .local v8, "style":Landroid/text/style/CharacterStyle;
    add-int v10, v5, v6

    const/16 v11, 0x22

    invoke-virtual {v3, v8, v5, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 171
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .end local v3    # "formatted":Landroid/text/SpannableStringBuilder;
    .end local v5    # "magic1":I
    .end local v6    # "magic2":I
    .end local v7    # "proportion":F
    .end local v8    # "style":Landroid/text/style/CharacterStyle;
    :goto_1
    return-void

    .line 149
    .end local v9    # "timeText":Ljava/lang/String;
    .restart local v2    # "currentLanguage":Ljava/lang/String;
    :cond_4
    const-string v10, "aa"

    invoke-static {v10, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getTextLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    .end local v2    # "currentLanguage":Ljava/lang/String;
    .restart local v9    # "timeText":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
