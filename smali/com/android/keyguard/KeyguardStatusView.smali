.class public Lcom/android/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardStatusView$Patterns;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusView"


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mClockView:Landroid/widget/TextClock;

.field private mDateView:Landroid/widget/TextClock;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Lcom/android/keyguard/KeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardStatusView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardStatusView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    return-void
.end method

.method public static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    const-string v2, ""

    .line 170
    :goto_0
    return-object v2

    .line 168
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "EHm"

    .line 169
    .local v1, "skeleton":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 168
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string v1, "Ehma"

    goto :goto_1
.end method

.method private getOwnerInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 202
    .local v2, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 203
    .local v0, "info":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v1

    .line 204
    .local v1, "ownerInfoEnabled":Z
    if-eqz v1, :cond_0

    .line 205
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_0
    return-object v0
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 146
    .local v0, "nextAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardStatusView$Patterns;->update(Landroid/content/Context;Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 150
    return-void

    .line 146
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setEnableMarquee(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 102
    const-string v1, "KeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string v0, "Enable"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " transport text marquee"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 105
    :cond_1
    return-void

    .line 102
    :cond_2
    const-string v0, "Disable"

    goto :goto_0
.end method

.method private updateOwnerInfo()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "ownerInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAppWidgetId()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, -0x2

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 188
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_big_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextClock;->setTextSize(IF)V

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->widget_label_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 194
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 110
    sget v1, Lcom/android/keyguard/R$id;->alarm_status:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 111
    sget v1, Lcom/android/keyguard/R$id;->date_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    .line 112
    sget v1, Lcom/android/keyguard/R$id;->clock_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    .line 114
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 115
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    .line 116
    .local v0, "screenOn":Z
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    .line 117
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refresh()V

    .line 118
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 122
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setElegantTextHeight(Z)V

    .line 123
    return-void
.end method

.method refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 6
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v5, 0x0

    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "alarm":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_accessibility_next_alarm:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    .end local v0    # "alarm":Ljava/lang/String;
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public refreshTime()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method
