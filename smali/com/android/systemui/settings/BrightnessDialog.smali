.class public Lcom/android/systemui/settings/BrightnessDialog;
.super Landroid/app/Activity;
.source "BrightnessDialog.java"


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0c02e6

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 46
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 47
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 48
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 50
    const v5, 0x7f04006c

    invoke-virtual {p0, v5}, Lcom/android/systemui/settings/BrightnessDialog;->setContentView(I)V

    .line 52
    const v5, 0x7f0e03a7

    invoke-virtual {p0, v5}, Lcom/android/systemui/settings/BrightnessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 53
    .local v1, "icon":Landroid/widget/ImageView;
    const v5, 0x7f0e01e1

    invoke-virtual {p0, v5}, Lcom/android/systemui/settings/BrightnessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/settings/ToggleSlider;

    .line 54
    .local v3, "slider":Lcom/android/systemui/settings/ToggleSlider;
    new-instance v5, Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v5, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 55
    const v5, 0x7f0e01e0

    invoke-virtual {p0, v5}, Lcom/android/systemui/settings/BrightnessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 56
    .local v0, "brightness":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c03de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 60
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 62
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 78
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa4

    if-ne p1, v0, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->finish()V

    .line 84
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 68
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    .line 74
    return-void
.end method
