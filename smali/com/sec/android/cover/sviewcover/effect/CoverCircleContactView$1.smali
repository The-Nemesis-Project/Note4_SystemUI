.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$1;
.super Ljava/lang/Object;
.source "CoverCircleContactView.java"

# interfaces
.implements Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->onUnlockExecuted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/sec/android/cover/widget/PopupFrameView;)V
    .locals 2
    .param p1, "popupView"    # Lcom/sec/android/cover/widget/PopupFrameView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setPendingIntent(Landroid/content/Intent;)V

    .line 73
    :cond_0
    return-void
.end method
