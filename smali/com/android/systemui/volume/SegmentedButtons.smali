.class public Lcom/android/systemui/volume/SegmentedButtons;
.super Landroid/widget/LinearLayout;
.source "SegmentedButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SegmentedButtons$Callback;
    }
.end annotation


# static fields
.field private static final BOLD:Landroid/graphics/Typeface;

.field private static DEBUG:Z = false

.field private static final LABEL_RES_KEY:I = 0x7f0e03b5

.field private static final MEDIUM:Landroid/graphics/Typeface;

.field private static final NONE_RESOURCE_ID:I = 0x7f0d0319

.field private static final SILENT_MODE_MUTE_RESOURCE_ID:I = 0x7f0d0383

.field private static final SILENT_MODE_SOUND_RESOURCE_ID:I = 0x7f0d0381

.field private static final SILENT_MODE_VIBRATE_RESOURCE_ID:I = 0x7f0d0382

.field private static final TAG:Ljava/lang/String; = "ZenModePanel"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private final mClick:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRinger:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mPreviousRinger:I

.field private mSelectedValue:Ljava/lang/Object;

.field private final mSoundButtonsClick:Landroid/view/View$OnClickListener;

.field private mSoundModeMuteButton:Landroid/widget/Button;

.field private mSoundModeSoundButton:Landroid/widget/Button;

.field private mSoundModeVibrateButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZenModePanel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SegmentedButtons;->MEDIUM:Landroid/graphics/Typeface;

    const-string v0, "sans-serif"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SegmentedButtons;->BOLD:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    iput v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mPreviousRinger:I

    new-instance v1, Lcom/android/systemui/volume/SegmentedButtons$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SegmentedButtons$3;-><init>(Lcom/android/systemui/volume/SegmentedButtons;)V

    iput-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mClick:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/android/systemui/volume/SegmentedButtons$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SegmentedButtons$4;-><init>(Lcom/android/systemui/volume/SegmentedButtons;)V

    iput-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundButtonsClick:Landroid/view/View$OnClickListener;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103012b

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    sget-boolean v1, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZenModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SegmentedButtons : mCurrentRinger = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/SegmentedButtons;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/SegmentedButtons;->fireInteraction()V

    return-void
.end method

.method private fireInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/SegmentedButtons$Callback;->onInteraction()V

    :cond_0
    return-void
.end method

.method private fireOnSelected(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/volume/SegmentedButtons$Callback;->onSelected(Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setSoundModeButtonView(Landroid/widget/Button;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeMuteButton:Landroid/widget/Button;

    goto :goto_0

    :pswitch_1
    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeVibrateButton:Landroid/widget/Button;

    goto :goto_0

    :pswitch_2
    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeSoundButton:Landroid/widget/Button;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0381
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSoundModeTextActivate(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModePanel"

    const-string v1, "SegmentedButtons: ***** Start setSoundModeText *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeMuteButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeVibrateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeSoundButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeVibrateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeSoundButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeMuteButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addButton(ILjava/lang/Object;)V
    .locals 5

    sget-boolean v2, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZenModePanel"

    const-string v3, "SegmentedButtons: ***** Start addButton *****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/SegmentedButtons;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400af

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const v2, 0x7f0e03b5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setText(I)V

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->addView(Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SegmentedButtons;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/systemui/volume/SegmentedButtons$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SegmentedButtons$1;-><init>(Lcom/android/systemui/volume/SegmentedButtons;)V

    invoke-static {v1, v2}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    const v2, 0x7f0d0319

    if-ne v2, p1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getSelectedValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    return-void
.end method

.method public setSegButtonClickListener(Landroid/widget/Button;ILjava/lang/Object;)V
    .locals 2

    const v0, 0x7f0e03b5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SegmentedButtons;->setSoundModeButtonView(Landroid/widget/Button;I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundButtonsClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/volume/SegmentedButtons$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SegmentedButtons$2;-><init>(Lcom/android/systemui/volume/SegmentedButtons;)V

    invoke-static {p1, v0}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    return-void
.end method

.method public setSelectedValue(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZenModePanel"

    const-string v2, "SegmentedButtons: ***** Start setSelectedValue#2 *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    iput v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mPreviousRinger:I

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeVibrateButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_9

    const/4 v0, 0x1

    :cond_1
    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SegmentedButtons;->setSoundModeTextActivate(I)V

    sget-boolean v1, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ZenModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SegmentedButtons : setSelectedValue#2 : mCurrentRinger = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v1, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ZenModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SegmentedButtons : setSelectedValue#2 : mPreviousRinger = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/SegmentedButtons;->mPreviousRinger:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mPreviousRinger:I

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "ZenModePanel"

    const-string v2, "SegmentedButtons : setSelectedValue#2 : #1 mPreviousRinger is Mute~~!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    :cond_5
    sget-boolean v1, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "ZenModePanel"

    const-string v2, "SegmentedButtons : setSelectedValue#2 : #1-1 currentRinger is vibrate or sound.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-boolean v1, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "ZenModePanel"

    const-string v2, "SegmentedButtons : setSelectedValue#2 : #1-1 call setRingerMode and set zen_mode to ALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    invoke-virtual {v1, v2, v4}, Landroid/media/AudioManager;->setRingerMode(IZ)V

    :cond_8
    :goto_1
    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeSoundButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_a

    const/4 v0, 0x2

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeMuteButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    sget-boolean v1, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v1, :cond_c

    const-string v1, "ZenModePanel"

    const-string v2, "SegmentedButtons : setSelectedValue#2 : #2 mPreviousRinger is Vibrate or Sound~~!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mPreviousRinger:I

    iget v2, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    if-eq v1, v2, :cond_8

    sget-boolean v1, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v1, :cond_d

    const-string v1, "ZenModePanel"

    const-string v2, "SegmentedButtons : setSelectedValue#2 : #2-1 currentRinger is not same to previousRinger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    if-nez v1, :cond_f

    sget-boolean v1, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string v1, "ZenModePanel"

    const-string v2, "SegmentedButtons : setSelectedValue#2 : #2-2 currentRinger is RINGER_MODE_SILENT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_1

    :cond_f
    sget-boolean v1, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v1, :cond_10

    const-string v1, "ZenModePanel"

    const-string v2, "SegmentedButtons : setSelectedValue#2 : #2-3 mCurrentRinger is Vibrate or Sound~~!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    sget-boolean v1, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v1, :cond_11

    const-string v1, "ZenModePanel"

    const-string v2, "SegmentedButtons : setSelectedValue#2 : #2-4 call setRingerMode.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    invoke-virtual {v1, v2, v4}, Landroid/media/AudioManager;->setRingerMode(IZ)V

    goto :goto_1
.end method

.method public setSelectedValue(Landroid/view/View;Ljava/lang/Object;)V
    .locals 7

    sget-boolean v4, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ZenModePanel"

    const-string v5, "SegmentedButtons: ***** Start setSelectedValue *****"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "ZenModePanel"

    const-string v5, "SegmentedButtons : setSelectedValue : mSelectedValue is same.. return #1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object p2, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    sget-boolean v4, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "ZenModePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SegmentedButtons : setSelectedValue : mSelectedValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/SegmentedButtons;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSelectedValue:Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    sget-boolean v4, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "ZenModePanel"

    const-string v5, "SegmentedButtons : setSelectedValue : call fireOnSelected().."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SegmentedButtons;->fireOnSelected(Landroid/view/View;)V

    goto :goto_0
.end method

.method public udpateLocaleForSoundModeText()V
    .locals 3

    const v2, 0x7f0e03b5

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeMuteButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeMuteButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeVibrateButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeVibrateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeSoundButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mSoundModeSoundButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public updateRingerState(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModePanel"

    const-string v1, "SegmentedButtons: ***** Start updateRingerState *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    iput v0, p0, Lcom/android/systemui/volume/SegmentedButtons;->mPreviousRinger:I

    iput p1, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    sget-boolean v0, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SegmentedButtons: updateRingerState : update ringerState, mPreviousRinger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SegmentedButtons;->mPreviousRinger:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/SegmentedButtons;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ZenModePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SegmentedButtons: updateRingerState : update ringerState, mCurrentRinger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SegmentedButtons;->mCurrentRinger:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
