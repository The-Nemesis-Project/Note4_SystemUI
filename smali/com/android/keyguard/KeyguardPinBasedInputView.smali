.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPinBasedInputView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field protected mArrKeyPadIds:[I

.field private mButton0:Landroid/view/View;

.field private mButton1:Landroid/view/View;

.field private mButton2:Landroid/view/View;

.field private mButton3:Landroid/view/View;

.field private mButton4:Landroid/view/View;

.field private mButton5:Landroid/view/View;

.field private mButton6:Landroid/view/View;

.field private mButton7:Landroid/view/View;

.field private mButton8:Landroid/view/View;

.field private mButton9:Landroid/view/View;

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mDivider:Landroid/view/View;

.field private mDividerBottom:Landroid/view/View;

.field private mMaxLength:I

.field private mOkButton:Landroid/view/View;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

.field private mPinViewFrame:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/keyguard/R$id;->key0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/keyguard/R$id;->key1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/keyguard/R$id;->key2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/keyguard/R$id;->key3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/keyguard/R$id;->key4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$id;->key5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$id;->key6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/keyguard/R$id;->key7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/keyguard/R$id;->key8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/keyguard/R$id;->key9:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/android/keyguard/R$id;->key_enter:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/android/keyguard/R$id;->delete_button:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mArrKeyPadIds:[I

    .line 64
    return-void
.end method

.method private performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 111
    return-void
.end method

.method private performNumberClick(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 114
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 125
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 128
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 131
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 134
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 137
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 140
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 143
    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 295
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 176
    sget v0, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    .line 177
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_imagebg_pinlock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    sget v0, Lcom/android/keyguard/R$id;->pin_view_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPinViewFrame:Landroid/widget/FrameLayout;

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPinViewFrame:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/keyguard/R$drawable;->pin_view_background:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 184
    sget v0, Lcom/android/keyguard/R$id;->divider:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDivider:Landroid/view/View;

    .line 185
    sget v0, Lcom/android/keyguard/R$id;->dividerbottom:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDividerBottom:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDividerBottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/PasswordTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    iget v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMaxLength:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setMaxLength(I)V

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setSelected(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 227
    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->delete_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    .line 228
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    sget v1, Lcom/android/keyguard/R$drawable;->theme_pin_delete_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 254
    sget v0, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    .line 255
    sget v0, Lcom/android/keyguard/R$id;->key1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    .line 256
    sget v0, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    .line 257
    sget v0, Lcom/android/keyguard/R$id;->key3:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    .line 258
    sget v0, Lcom/android/keyguard/R$id;->key4:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    .line 259
    sget v0, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    .line 260
    sget v0, Lcom/android/keyguard/R$id;->key6:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    .line 261
    sget v0, Lcom/android/keyguard/R$id;->key7:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    .line 262
    sget v0, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    .line 263
    sget v0, Lcom/android/keyguard/R$id;->key9:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 266
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 269
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->disableDevicePermanently()V

    .line 272
    :cond_3
    return-void

    .line 191
    :cond_4
    sget v0, Lcom/android/keyguard/R$id;->key_enter_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 276
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x13

    if-eq p2, v0, :cond_0

    const/16 v0, 0x14

    if-eq p2, v0, :cond_0

    const/16 v0, 0x16

    if-eq p2, v0, :cond_0

    const/16 v0, 0x15

    if-eq p2, v0, :cond_0

    const/16 v0, 0x19

    if-eq p2, v0, :cond_0

    const/16 v0, 0x18

    if-eq p2, v0, :cond_0

    .line 286
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 287
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xa0

    if-ne p1, v2, :cond_1

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    .line 106
    :goto_0
    return v1

    .line 92
    :cond_1
    const/16 v2, 0x43

    if-ne p1, v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 96
    :cond_2
    const/4 v2, 0x7

    if-lt p1, v2, :cond_3

    const/16 v2, 0x10

    if-gt p1, v2, :cond_3

    .line 97
    add-int/lit8 v0, p1, -0x7

    .line 98
    .local v0, "number":I
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    goto :goto_0

    .line 101
    .end local v0    # "number":I
    :cond_3
    const/16 v2, 0x90

    if-lt p1, v2, :cond_4

    const/16 v2, 0x99

    if-gt p1, v2, :cond_4

    .line 102
    add-int/lit16 v0, p1, -0x90

    .line 103
    .restart local v0    # "number":I
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    goto :goto_0

    .line 106
    .end local v0    # "number":I
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 69
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 70
    return-void
.end method

.method protected resetPasswordText(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextView;->reset(Z)V

    .line 165
    return-void
.end method

.method protected resetState()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setEnabled(Z)V

    .line 80
    return-void
.end method

.method protected setEnableKeyPad(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 149
    const/4 v0, 0x0

    .local v0, "iIdx":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mArrKeyPadIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mArrKeyPadIds:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, "padView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "padView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setMaxLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMaxLength:I

    .line 160
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextView;->setEnabled(Z)V

    .line 85
    return-void
.end method
