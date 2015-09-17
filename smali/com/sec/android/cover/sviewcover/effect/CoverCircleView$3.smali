.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->doTransition(F[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

.field final synthetic val$to:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;FLandroid/view/View;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iput p2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;->val$to:F

    iput-object p3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 206
    const-string v0, "CoverCircleView"

    const-string v1, "animation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;->val$to:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 213
    const-string v0, "CoverCircleView"

    const-string v1, "animation start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    return-void
.end method
