.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;
.super Ljava/lang/Object;
.source "StatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    const/4 v0, 0x1

    sub-int v1, p4, p2

    sub-int v2, p8, p6

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipping(F)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;F)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateDateCollapsedTranslation()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
