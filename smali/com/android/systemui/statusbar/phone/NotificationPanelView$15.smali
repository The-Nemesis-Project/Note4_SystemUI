.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$carrierLabelHeight:I

.field final synthetic val$isKeyGuard:Z

.field final synthetic val$isShade:Z

.field final synthetic val$isShadeLocked:Z

.field final synthetic val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZZZLandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$carrierLabelHeight:I

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$isShade:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$isKeyGuard:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$isShadeLocked:Z

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->isSingleLine()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildYTranslation()F

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v4, v7

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$carrierLabelHeight:I

    sub-int v0, v4, v7

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$carrierLabelHeight:I

    add-int v3, v0, v4

    invoke-virtual {v2, v5, v3, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$isShade:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$isKeyGuard:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v4, :cond_8

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setPressed(Z)V

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowKeyguardOperatorLogoIcon:Z

    if-eqz v4, :cond_6

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v5, v5, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v4

    const v7, 0x800013

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLableStartPading:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v7

    invoke-virtual {v4, v7, v5, v5, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$isShade:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$isKeyGuard:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$isShadeLocked:Z

    if-eqz v7, :cond_5

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    move v6, v5

    :cond_5
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    sget-object v4, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mClearAll.setVisibility - mIsFullyOpened : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isShade : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$isShade:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mHasNotification : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mIsUpwardFling : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mQsFullyExpanded : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isShadeLocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$isShadeLocked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mClearAllVisible : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-nez v4, :cond_1

    :cond_8
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$isShadeLocked:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_9
    move v4, v6

    goto/16 :goto_0

    :cond_a
    move v4, v5

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v7

    sub-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v7

    sub-int/2addr v4, v7

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$carrierLabelHeight:I

    sub-int v0, v4, v7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4, v5, v5, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowKeyguardOperatorLogoIcon:Z

    if-eqz v4, :cond_c

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$isKeyGuard:Z

    if-nez v7, :cond_d

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;->val$isShadeLocked:Z

    if-eqz v7, :cond_e

    :cond_d
    move v6, v5

    :cond_e
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method
