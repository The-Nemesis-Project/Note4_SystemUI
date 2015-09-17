.class public Lcom/android/keyguard/KeyguardSecurityViewHelper;
.super Ljava/lang/Object;
.source "KeyguardSecurityViewHelper.java"


# static fields
.field private static final ANIMATION_DOWN_DURATION:I = 0x1d3

.field private static final ANIMATION_DOWN_TIMEOFFSET:I = 0x258

.field private static final ANIMATION_UP_DURATION:I = 0x14d

.field private static final ANIMATION_UP_TIMEOFFSET:I = 0x10b

.field private static mChoreographer:Landroid/view/Choreographer;

.field private static mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

.field private static mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .param p0, "securityMessageDisplay"    # Lcom/android/keyguard/SecurityMessageDisplay;
    .param p1, "ecaView"    # Landroid/view/View;
    .param p2, "bouncerFrame"    # Landroid/graphics/drawable/Drawable;
    .param p3, "duration"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 84
    if-eqz p0, :cond_0

    .line 85
    invoke-interface {p0, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->hideBouncer(I)V

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    if-lez p3, :cond_3

    .line 90
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 91
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 92
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewHelper$2;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 98
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 103
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 104
    if-lez p3, :cond_4

    .line 105
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 106
    .restart local v0    # "anim":Landroid/animation/Animator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 107
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 112
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    :goto_1
    return-void

    .line 100
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 105
    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private static setScaleAnimation()V
    .locals 16

    .prologue
    const v2, 0x3f83d70a    # 1.03f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 164
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    .line 166
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 167
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 168
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v8, 0x14d

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 170
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    move v8, v2

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v5

    move v13, v6

    move v14, v5

    move v15, v6

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sput-object v7, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    .line 172
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 173
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 174
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x1d3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 175
    return-void
.end method

.method public static showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .param p0, "securityMessageDisplay"    # Lcom/android/keyguard/SecurityMessageDisplay;
    .param p1, "ecaView"    # Landroid/view/View;
    .param p2, "bouncerFrame"    # Landroid/graphics/drawable/Drawable;
    .param p3, "duration"    # I

    .prologue
    const/4 v4, 0x0

    .line 45
    if-eqz p0, :cond_0

    .line 46
    invoke-interface {p0, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->showBouncer(I)V

    .line 48
    :cond_0
    if-eqz p1, :cond_1

    .line 49
    if-lez p3, :cond_3

    .line 50
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 51
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 52
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewHelper$1;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 65
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 71
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 72
    if-lez p3, :cond_4

    .line 73
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 74
    .restart local v0    # "anim":Landroid/animation/Animator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 75
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 80
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    :goto_1
    return-void

    .line 67
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 68
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_4
    const/16 v1, 0xff

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 73
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public static showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V
    .locals 6
    .param p0, "securityMessageDisplay"    # Lcom/android/keyguard/SecurityMessageDisplay;
    .param p1, "ecaView"    # Landroid/view/View;
    .param p2, "animationView"    # Landroid/view/View;
    .param p3, "duration"    # I

    .prologue
    const/4 v5, 0x0

    .line 116
    if-eqz p0, :cond_0

    .line 117
    invoke-interface {p0, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->showBouncer(I)V

    .line 119
    :cond_0
    if-eqz p1, :cond_1

    .line 120
    if-lez p3, :cond_3

    .line 121
    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v5, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 122
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 123
    new-instance v2, Lcom/android/keyguard/KeyguardSecurityViewHelper$3;

    invoke-direct {v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 135
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 141
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 142
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 143
    .local v1, "bouncerFrame":Landroid/graphics/drawable/Drawable;
    if-lez p3, :cond_4

    .line 144
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->setScaleAnimation()V

    .line 145
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    const/16 v3, 0x10b

    invoke-static {p2, v2, v3}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startViewAnimation(Landroid/view/View;Landroid/view/animation/ScaleAnimation;I)V

    .line 146
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    const/16 v3, 0x258

    invoke-static {p2, v2, v3}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startViewAnimation(Landroid/view/View;Landroid/view/animation/ScaleAnimation;I)V

    .line 148
    if-eqz v1, :cond_2

    .line 149
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 150
    .restart local v0    # "anim":Landroid/animation/Animator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 151
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 161
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "bouncerFrame":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    return-void

    .line 137
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 138
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 154
    .restart local v1    # "bouncerFrame":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/high16 v2, 0x437f0000    # 255.0f

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 156
    if-eqz v1, :cond_2

    .line 157
    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 149
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private static startViewAnimation(Landroid/view/View;Landroid/view/animation/ScaleAnimation;I)V
    .locals 4
    .param p0, "animationView"    # Landroid/view/View;
    .param p1, "Anim"    # Landroid/view/animation/ScaleAnimation;
    .param p2, "offset"    # I

    .prologue
    .line 178
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 180
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$4;-><init>(Landroid/view/View;Landroid/view/animation/ScaleAnimation;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method
