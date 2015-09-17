.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onScreenTurnedOff()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$100(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    .line 54
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onScreenTurnedOn()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    .line 49
    return-void
.end method
