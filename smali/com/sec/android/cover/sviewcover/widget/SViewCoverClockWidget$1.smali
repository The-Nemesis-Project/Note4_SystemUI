.class Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 4

    .prologue
    const/16 v2, 0x12c2

    .line 76
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 82
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 83
    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$702(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Z)Z

    .line 120
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://settings/system/date_format"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "festival_effect_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "festival_effect_lockscreen_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    :cond_2
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FestivalObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->isFestivalEffectEnabled()Z
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$800(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Z

    move-result v1

    # setter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$602(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Z)Z

    .line 134
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFestivalEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :cond_3
    :goto_0
    return-void

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDateFormatChanged()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 73
    return-void
.end method

.method public onLocaleChanged()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->refreshClock()V

    .line 147
    return-void
.end method

.method public onPickupCommonDay()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_PICKUP_COMMON_DAY "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->refreshClock()V

    .line 96
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 97
    return-void
.end method

.method public onPickupFestivalDay(Ljava/lang/String;)V
    .locals 4
    .param p1, "festivalString"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$500(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/android/cover/CoverUtils;->getFestivalIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, "festivalIconResId":I
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 103
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :goto_0
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_PICKUP_FESTIVAL_DAY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mFestivalEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getVisibility() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "festivalIconResId":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->refreshClock()V

    .line 114
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 115
    return-void

    .line 106
    .restart local v0    # "festivalIconResId":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onThemeFontChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onThemeFontChanged(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$000(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 69
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 1
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    .line 87
    return-void
.end method
