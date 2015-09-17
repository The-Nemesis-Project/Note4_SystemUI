.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# static fields
.field private static final ACTION_OPERATOR_LOGO:Ljava/lang/String; = "com.sec.android.action.OPERATOR_LOGO_UPDATE"

.field private static final EXTRA_LOGO_SHOW:Ljava/lang/String; = "logo_show"

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusBarView"


# instance fields
.field private mBatteryCharging:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mBatteryListening:Z

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardUserSwitcherShowing:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mOperatorLogoView:Landroid/widget/ImageView;

.field private mSystemIconsSuperContainer:Landroid/view/View;

.field private mSystemIconsSwitcherHiddenExpandedMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private animateNextLayoutChange()V
    .locals 4

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 230
    .local v0, "systemIconsCurrentX":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    const/4 v1, 0x1

    .line 231
    .local v1, "userSwitcherVisible":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;ZI)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 272
    return-void

    .line 230
    .end local v1    # "userSwitcherVisible":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadDimens()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0308

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 117
    return-void
.end method

.method private updateSystemIconsLayoutParams()V
    .locals 3

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 157
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 158
    .local v1, "marginEnd":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    .line 159
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    :cond_0
    return-void

    .line 157
    .end local v1    # "marginEnd":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateUserSwitcher()V
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 179
    .local v0, "keyguardSwitcherAvailable":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setFocusable(Z)V

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setKeyguardMode(Z)V

    .line 182
    return-void

    .line 178
    .end local v0    # "keyguardSwitcherAvailable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVisibilities()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 152
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 7
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0316

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryCharging:Z

    if-eq v2, p3, :cond_1

    .line 202
    .local v0, "changed":Z
    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryCharging:Z

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    .line 206
    :cond_0
    return-void

    .end local v0    # "changed":Z
    :cond_1
    move v0, v1

    .line 201
    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c032d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 112
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 82
    const v0, 0x7f0e012c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    .line 83
    const v0, 0x7f0e012a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 84
    const v0, 0x7f0e012b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f0e012e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryLevel:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0e012f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    .line 93
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowKeyguardOperatorLogoIcon:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.android.action.OPERATOR_LOGO_UPDATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 98
    const v0, 0x7f0e0130

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mOperatorLogoView:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    .line 103
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 186
    const v0, 0x7f0e01c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 187
    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 1
    .param p1, "keyguardUserSwitcher"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateUserSwitcher()V

    .line 217
    return-void
.end method

.method public setKeyguardUserSwitcherShowing(ZZ)V
    .locals 0
    .param p1, "showing"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherShowing:Z

    .line 221
    if-eqz p2, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animateNextLayoutChange()V

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    .line 226
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-ne p1, v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 169
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryListening:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    goto :goto_0
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 1
    .param p1, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 190
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 196
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    if-eqz p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    .line 282
    :cond_0
    return-void
.end method
