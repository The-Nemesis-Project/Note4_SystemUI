.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;
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

    .prologue
    .line 2309
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$carrierLabelHeight:I

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$isShade:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$isKeyGuard:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$isShadeLocked:Z

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 2312
    const/4 v0, 0x0

    .line 2313
    .local v0, "bottomMargin":I
    const/4 v4, 0x0

    .line 2314
    .local v4, "topMargin":I
    const/4 v2, 0x0

    .line 2315
    .local v2, "endMargin":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->isSingleLine()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2316
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2317
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2318
    .local v3, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildYTranslation()F

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v5, v8

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$carrierLabelHeight:I

    sub-int v0, v5, v8

    .line 2322
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$carrierLabelHeight:I

    add-int v4, v0, v5

    .line 2323
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c03dc

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2324
    invoke-virtual {v3, v6, v4, v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2325
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2327
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$isShade:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$isKeyGuard:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v5, :cond_8

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2331
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setPressed(Z)V

    .line 2333
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowKeyguardOperatorLogoIcon:Z

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v5, :cond_6

    .line 2334
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2335
    .local v1, "carrierLableMarginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v6, v6, v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2336
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2337
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    const v8, 0x800013

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 2338
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLableStartPading:I
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v8

    invoke-virtual {v5, v8, v6, v6, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 2339
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$isShade:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$isKeyGuard:Z

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$isShadeLocked:Z

    if-eqz v8, :cond_5

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    move v7, v6

    :cond_5
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2343
    .end local v1    # "carrierLableMarginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    sget-object v5, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mClearAll.setVisibility - mIsFullyOpened : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isShade : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$isShade:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mHasNotification : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mIsUpwardFling : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mQsFullyExpanded : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isShadeLocked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$isShadeLocked:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mClearAllVisible : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    .end local v3    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_2
    return-void

    .line 2327
    .restart local v3    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-nez v5, :cond_1

    :cond_8
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$isShadeLocked:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_9
    move v5, v7

    goto/16 :goto_0

    :cond_a
    move v5, v6

    .line 2331
    goto/16 :goto_1

    .line 2347
    .end local v3    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2349
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v8

    sub-int/2addr v5, v8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v8

    sub-int/2addr v5, v8

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$carrierLabelHeight:I

    sub-int v0, v5, v8

    .line 2358
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v5, v6, v6, v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2359
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2360
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowKeyguardOperatorLogoIcon:Z

    if-eqz v5, :cond_c

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v5, :cond_c

    .line 2361
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 2362
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 2364
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v8

    if-nez v8, :cond_d

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$isKeyGuard:Z

    if-nez v8, :cond_d

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;->val$isShadeLocked:Z

    if-eqz v8, :cond_e

    :cond_d
    move v7, v6

    :cond_e
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method
