.class public Lcom/android/systemui/statusbar/phone/BarTransitions;
.super Ljava/lang/Object;
.source "BarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;
    }
.end annotation


# static fields
.field public static final BACKGROUND_DURATION:I = 0xc8

.field private static final DEBUG:Z = false

.field private static final DEBUG_COLORS:Z = false

.field public static final HIGH_END:Z

.field public static final LIGHTS_IN_DURATION:I = 0xfa

.field public static final LIGHTS_OUT_DURATION:I = 0x2ee

.field public static final MODE_LIGHTS_OUT:I = 0x3

.field public static final MODE_OPAQUE:I = 0x0

.field public static final MODE_SEC_MULTI_WINDOW:I = 0x6

.field public static final MODE_SEMI_TRANSPARENT:I = 0x1

.field public static final MODE_TRANSLUCENT:I = 0x2

.field public static final MODE_TRANSPARENT:I = 0x4

.field public static final MODE_WARNING:I = 0x5


# instance fields
.field private final mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

.field private mMode:I

.field private final mTag:Ljava/lang/String;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "gradientResourceId"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarTransitions."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mTag:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    .line 64
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->isDisableStatusBarTransparent:Z

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02059b

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    .line 69
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_0
    return-void

    .line 67
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    goto :goto_0
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 105
    if-nez p0, :cond_0

    const-string v0, "MODE_OPAQUE"

    .line 111
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "MODE_SEMI_TRANSPARENT"

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "MODE_TRANSLUCENT"

    goto :goto_0

    .line 108
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "MODE_LIGHTS_OUT"

    goto :goto_0

    .line 109
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string v0, "MODE_TRANSPARENT"

    goto :goto_0

    .line 110
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string v0, "MODE_WARNING"

    goto :goto_0

    .line 111
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string v0, "MODE_SEC_MULTI_WINDOW"

    goto :goto_0

    .line 112
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected applyModeBackground(IIZ)V
    .locals 1
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->applyModeBackground(IIZ)V

    .line 102
    return-void
.end method

.method public finishAnimations()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->finishAnimation()V

    .line 117
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    return v0
.end method

.method protected onTransition(IIZ)V
    .locals 1
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IIZ)V

    .line 96
    :cond_0
    return-void
.end method

.method public transitionTo(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 80
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 82
    :cond_0
    const/4 p1, 0x0

    .line 84
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    if-ne v1, p1, :cond_2

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    .line 86
    .local v0, "oldMode":I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    .line 89
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    goto :goto_0
.end method
