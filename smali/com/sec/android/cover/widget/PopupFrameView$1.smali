.class Lcom/sec/android/cover/widget/PopupFrameView$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "PopupFrameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/widget/PopupFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/widget/PopupFrameView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/widget/PopupFrameView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/widget/PopupFrameView$1;->this$0:Lcom/sec/android/cover/widget/PopupFrameView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/PopupFrameView$1;->this$0:Lcom/sec/android/cover/widget/PopupFrameView;

    # setter for: Lcom/sec/android/cover/widget/PopupFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v0, p1}, Lcom/sec/android/cover/widget/PopupFrameView;->access$002(Lcom/sec/android/cover/widget/PopupFrameView;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/PopupFrameView$1;->this$0:Lcom/sec/android/cover/widget/PopupFrameView;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/PopupFrameView;->close()V

    return-void
.end method
