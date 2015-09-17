.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;
.super Ljava/lang/Object;
.source "StatusBarHeaderView.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScanState:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;
    .param p1, "x1"    # Z

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->handleToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;
    .param p1, "x1"    # Z

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->handleScanStateChanged(Z)V

    return-void
.end method

.method private handleScanStateChanged(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 820
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->mScanState:Z

    if-ne v1, p1, :cond_0

    .line 830
    :goto_0
    return-void

    .line 821
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->mScanState:Z

    .line 822
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderProgress:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$1000(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 823
    .local v0, "anim":Landroid/graphics/drawable/Animatable;
    if-eqz p1, :cond_1

    .line 824
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderProgress:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$1000(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 825
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderProgress:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$1000(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 828
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_0
.end method

.method private handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 6
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 833
    if-eqz p1, :cond_0

    move v0, v2

    .line 835
    .local v0, "showingDetail":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$1100(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;

    move-result-object v5

    if-nez v0, :cond_1

    move v4, v2

    :goto_1
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->transition(Landroid/view/View;Z)V

    .line 839
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->transition(Landroid/view/View;Z)V

    .line 840
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # setter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z
    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$1302(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Z)Z

    .line 841
    if-eqz v0, :cond_3

    .line 842
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderTitle:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$1400(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getTitle()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 843
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    .line 844
    .local v1, "toggleState":Ljava/lang/Boolean;
    if-nez v1, :cond_2

    .line 845
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$900(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/Switch;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 846
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 861
    .end local v1    # "toggleState":Ljava/lang/Boolean;
    :goto_2
    return-void

    .end local v0    # "showingDetail":Z
    :cond_0
    move v0, v3

    .line 833
    goto :goto_0

    .restart local v0    # "showingDetail":Z
    :cond_1
    move v4, v3

    .line 835
    goto :goto_1

    .line 848
    .restart local v1    # "toggleState":Ljava/lang/Boolean;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$900(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 849
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$900(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 850
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 851
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$4;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 859
    .end local v1    # "toggleState":Ljava/lang/Boolean;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2
.end method

.method private handleToggleStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->access$900(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 817
    return-void
.end method

.method private transition(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "in"    # Z

    .prologue
    .line 864
    if-eqz p2, :cond_0

    .line 865
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 866
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 868
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 880
    return-void

    .line 868
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onScanStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->post(Ljava/lang/Runnable;)Z

    .line 813
    return-void
.end method

.method public onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 2
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->post(Ljava/lang/Runnable;)Z

    .line 803
    return-void
.end method

.method public onToggleStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->post(Ljava/lang/Runnable;)Z

    .line 793
    return-void
.end method
