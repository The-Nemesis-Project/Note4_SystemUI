.class public Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;
.super Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.source "CoverCircleContactView.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 41
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_contact:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mArrowResId:I

    .line 42
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_contact_button:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContentResId:I

    .line 43
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onFinishInflate()V

    .line 48
    return-void
.end method

.method public onUnlockExecuted()V
    .locals 5

    .prologue
    .line 52
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockExecuted()V

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.contacts.action.SCOVER_FAVORITES"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "contactIntent":Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 62
    .local v2, "viewparent":Landroid/view/View;
    new-instance v1, Lcom/sec/android/cover/widget/PopupFrameView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/sec/android/cover/widget/PopupFrameView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, "openPopup":Lcom/sec/android/cover/widget/PopupFrameView;
    if-eqz v1, :cond_0

    .line 64
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "viewparent":Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContext:Landroid/content/Context;

    sget v4, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_popup_favorite:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/cover/widget/PopupFrameView;->show(Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    .line 67
    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$1;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$1;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/widget/PopupFrameView;->setOnCloseListener(Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;)V

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v3, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setPendingIntent(Landroid/content/Intent;)V

    .line 84
    .end local v1    # "openPopup":Lcom/sec/android/cover/widget/PopupFrameView;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->reset()V

    .line 85
    return-void

    .line 80
    :cond_2
    sget-object v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->TAG:Ljava/lang/String;

    const-string v4, "onClick : Launching favorite"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V
    .locals 2
    .param p1, "state"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$2;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
