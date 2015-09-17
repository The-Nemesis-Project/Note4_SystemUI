.class public Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewLensFlare.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "LensFlare_Keyguard"


# instance fields
.field private lensFlareEffect:Lcom/samsung/android/visualeffect/EffectView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0xb

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "LensFlare_Keyguard"

    const-string v2, "KeyguardEffectViewLensFlare Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/visualeffect/EffectView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/samsung/android/visualeffect/EffectView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/visualeffect/EffectView;->setEffect(I)V

    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_flare_hexagon_blue:I

    iput v2, v1, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;->hexagon_blue:I

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_flare_hexagon_green:I

    iput v2, v1, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;->hexagon_green:I

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_flare_hexagon_orange:I

    iput v2, v1, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;->hexagon_orange:I

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_flare_hoverlight:I

    iput v2, v1, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;->hoverlight:I

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_flare_light_00040:I

    iput v2, v1, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;->light:I

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_flare_long:I

    iput v2, v1, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;->long_light:I

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_flare_particle:I

    iput v2, v1, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;->particle:I

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_flare_rainbow:I

    iput v2, v1, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;->rainbow:I

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_flare_ring:I

    iput v2, v1, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;->ring:I

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_flare_vignetting:I

    iput v2, v1, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;->vignetting:I

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    sget v2, Lcom/android/keyguard/R$raw;->lens_flare_tap:I

    iput v2, v1, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;->tapSound:I

    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->lensFlareData:Lcom/samsung/android/visualeffect/lock/data/LensFlareData;

    sget v2, Lcom/android/keyguard/R$raw;->lens_flare_unlock:I

    iput v2, v1, Lcom/samsung/android/visualeffect/lock/data/LensFlareData;->unlockSound:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/EffectView;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "LensFlare_Keyguard"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "LensFlare_Keyguard"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public playLockSound()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "playLockSound"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public reset()V
    .locals 3

    const-string v1, "LensFlare_Keyguard"

    const-string v2, "reset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reset"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string v0, "LensFlare_Keyguard"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public screenTurnedOn()V
    .locals 3

    const-string v1, "LensFlare_Keyguard"

    const-string v2, "screenTurnedOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "screenTurnedOn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 3

    const-string v1, "LensFlare_Keyguard"

    const-string v2, "show"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "show"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3

    const-string v1, "LensFlare_Keyguard"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "startDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "LensFlare_Keyguard"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
