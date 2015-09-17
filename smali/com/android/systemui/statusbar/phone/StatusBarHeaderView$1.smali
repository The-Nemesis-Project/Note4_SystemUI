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

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const/4 v0, 0x1

    .line 192
    sub-int v1, p4, p2

    sub-int v2, p8, p6

    if-eq v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipping(F)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;F)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 199
    .local v0, "rtl":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateDateCollapsedTranslation()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    .line 201
    return-void

    .line 196
    .end local v0    # "rtl":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
