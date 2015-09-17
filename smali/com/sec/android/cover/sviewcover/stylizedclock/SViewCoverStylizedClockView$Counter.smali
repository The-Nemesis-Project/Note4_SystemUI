.class Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;
.super Landroid/os/CountDownTimer;
.source "SViewCoverStylizedClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Counter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 434
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;->this$0:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    .line 435
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 436
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;->start()Landroid/os/CountDownTimer;

    .line 441
    return-void
.end method

.method public onTick(J)V
    .locals 1
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView$Counter;->this$0:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    # invokes: Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->access$000(Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;)V

    .line 446
    return-void
.end method
