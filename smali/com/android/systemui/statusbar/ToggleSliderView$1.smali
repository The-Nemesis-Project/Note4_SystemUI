.class Lcom/android/systemui/statusbar/ToggleSliderView$1;
.super Ljava/lang/Object;
.source "ToggleSliderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ToggleSliderView;->animateText(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ToggleSliderView;

.field final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ToggleSliderView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ToggleSliderView$1;->this$0:Lcom/android/systemui/statusbar/ToggleSliderView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ToggleSliderView$1;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView$1;->this$0:Lcom/android/systemui/statusbar/ToggleSliderView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/ToggleSliderView;->mAnimating:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ToggleSliderView;->access$002(Lcom/android/systemui/statusbar/ToggleSliderView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView$1;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ToggleSliderView$1;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
