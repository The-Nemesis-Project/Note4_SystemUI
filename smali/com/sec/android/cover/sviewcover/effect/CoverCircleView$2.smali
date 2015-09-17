.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;
.super Ljava/lang/Object;
.source "CoverCircleView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverUnlockEventHandler:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverUnlockEventHandler:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
