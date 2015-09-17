.class public Lcom/android/systemui/volume/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumePanel$Callback;,
        Lcom/android/systemui/volume/VolumePanel$LoadListener;,
        Lcom/android/systemui/volume/VolumePanel$SafetyWarning;,
        Lcom/android/systemui/volume/VolumePanel$StreamControl;,
        Lcom/android/systemui/volume/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final ACTION_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field public static final ACTION_VOLUMEPANEL_CLICK_BUTTON1:Ljava/lang/String; = "android.view.volumepanel.CLICK_BUTTON1"

.field public static final ACTION_VOLUMEPANEL_CLICK_BUTTON2:Ljava/lang/String; = "android.view.volumepanel.CLICK_BUTTON2"

.field public static final ACTION_VOLUMEPANEL_TOUCH_POPUP:Ljava/lang/String; = "android.view.volumepanel.TOUCH_POPUP"

.field private static final BEEP_DURATION:I = 0x96

.field private static final EXTRA_DATA:Ljava/lang/String; = "data"

.field private static final EXTRA_MEDIA:Ljava/lang/String; = "Media"

.field private static final EXTRA_NOTIFICATION:Ljava/lang/String; = "Notification"

.field private static final EXTRA_RINGTONE:Ljava/lang/String; = "Ringtone"

.field private static final EXTRA_SYSTEM:Ljava/lang/String; = "System"

.field private static final FEATURE_UNIQUE_VALUE:Ljava/lang/String; = "FWVP"

.field private static final FINEVOLUME_MAX_INDEX:I = 0x96

.field private static final FINEVOLUME_PARAM_PREFIX:Ljava/lang/String; = "audioParam;fine_volume="

.field private static final FREE_DELAY:I = 0x2710

.field private static final HW_USE_VALUE:J = 0x3e8L

.field private static final IC_AUDIO_VOL:I = 0x7f0200dc

.field private static final IC_AUDIO_VOL_MUTE:I = 0x7f0200dd

.field private static LOGD:Z = false

.field private static final LOGGER_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final L_AMERICANO:Z

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_DISSMISS_SAFE_VOLUME_WARNING:I = 0x10

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_LAYOUT_DIRECTION:I = 0xc

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_NOTIFICATION_EFFECTS_SUPPRESSOR_CHANGED:I = 0xf

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_USER_ACTIVITY:I = 0xe

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MSG_ZEN_MODE_AVAILABLE_CHANGED:I = 0xd

.field private static final NUM_VOLUME_EFFECT:I = 0x1

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui.volume"

.field private static final PLAY_SOUND_DELAY:I = 0x0

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String;

.field private static final SOUND_VOLUME_CONTROL:I = 0x0

.field private static final STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field private static final STREAM_MASTER:I = -0x64

.field private static final STREAM_REMOTE_MUSIC:I = -0xc8

.field private static final SUPPORT_FINEVOLUME:Z = false

.field private static final SUPPORT_WEARABLE_HMT:Z = true

.field private static final SVIEWCOVER_FEATURE_LEVEL:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final SW_USE_VALUE:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field private static final TIMEOUT_DELAY_COLLAPSED:I = 0x1194

.field private static final TIMEOUT_DELAY_EXPANDED:I = 0x2710

.field private static final TIMEOUT_DELAY_FOR_VZW:I = 0xfa0

.field private static final TIMEOUT_DELAY_SAFETY_WARNING:I = 0x1388

.field private static final TIMEOUT_DELAY_SHORT:I = 0x5dc

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static mIsLoadSoundPool:Z

.field private static sSafetyWarning:Landroid/app/AlertDialog;

.field private static sSafetyWarningLock:Ljava/lang/Object;


# instance fields
.field private SOUND_EFFECT_FILES_MAP:[[I

.field private final isEnableInterruption:Z

.field private kidsModeSafetyToast:Landroid/widget/Toast;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveStreamType:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBottomMarginView:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

.field private final mCollapseMarginView:Landroid/view/View;

.field protected final mContext:Landroid/content/Context;

.field private mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverLevel:I

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCoverType:I

.field private final mDialog:Landroid/app/Dialog;

.field private mDisabledAlpha:F

.field private final mDivider:Landroid/view/View;

.field private mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

.field private mExtraForRingerMode:Ljava/lang/String;

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconButtonActiveColor:Landroid/content/res/ColorStateList;

.field private mIconButtonDisableColor:Landroid/content/res/ColorStateList;

.field private mIconDisableColor:Landroid/content/res/ColorStateList;

.field private mIsShowingSCoverWarning:Z

.field private mIsWhiteTheme:Z

.field private mLastRingerMode:I

.field private mLastRingerProgress:I

.field private final mMediaControllerCb:Landroid/media/session/MediaController$Callback;

.field private mMediaSlider:Landroid/widget/SeekBar;

.field private mMediaVolumeIcon:Landroid/widget/ImageView;

.field private mMediaVolumePanel:Landroid/view/ViewGroup;

.field private mMediaVolumeTitle:Landroid/widget/TextView;

.field private final mMoreButton:Landroid/view/View;

.field private final mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mRingIsSilent:Z

.field private mSafetyValue:I

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSeekListenerForBottomMedia:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSliderPanel:Landroid/view/ViewGroup;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/volume/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeoutDelay:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mTopOffset:I

.field private mUseCocktailFeature:Z

.field private mValueForHwSwKey:J

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private mVolumeTitleTextColor:I

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenModeAvailable:Z

.field private mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

.field private mZenPanelExpanded:Z

.field private mZenPanelTop:I

.field private sCoverTopOffset:I

.field private volumeDarkThemeResources:[I

.field private volumeWhiteThemeResources:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    sput-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    .line 200
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 270
    sput-boolean v2, Lcom/android/systemui/volume/VolumePanel;->mIsLoadSoundPool:Z

    .line 277
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TW_Volume_control.ogg"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 305
    const-string v0, "americano"

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/VolumePanel;->L_AMERICANO:Z

    .line 416
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->FMStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VideoCallStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 518
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zenController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 750
    invoke-direct/range {p0 .. p0}, Landroid/os/Handler;-><init>()V

    .line 186
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumePanel;->isEnableInterruption:Z

    .line 216
    const/16 v14, 0xbb8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    .line 218
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    .line 219
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    .line 231
    const/16 v14, 0x9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mSafetyValue:I

    .line 263
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 284
    const/4 v14, 0x1

    new-array v14, v14, [[I

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    .line 290
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 291
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 292
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 293
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverType:I

    .line 294
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumePanel;->mIsShowingSCoverWarning:Z

    .line 296
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverLevel:I

    .line 297
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mTopOffset:I

    .line 298
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->sCoverTopOffset:I

    .line 301
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelTop:I

    .line 303
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 320
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumePanel;->mUseCocktailFeature:Z

    .line 623
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/volume/VolumePanel$1;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 671
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumePanel;->mIsWhiteTheme:Z

    .line 678
    const/4 v14, 0x4

    new-array v14, v14, [I

    fill-array-data v14, :array_1

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->volumeWhiteThemeResources:[I

    .line 685
    const/4 v14, 0x4

    new-array v14, v14, [I

    fill-array-data v14, :array_2

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->volumeDarkThemeResources:[I

    .line 723
    const-string v14, "Ringtone"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    .line 724
    const-wide/16 v14, 0x3e8

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/systemui/volume/VolumePanel;->mValueForHwSwKey:J

    .line 3130
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/volume/VolumePanel$11;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3185
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$12;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/volume/VolumePanel$12;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mSeekListenerForBottomMedia:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3224
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$13;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/volume/VolumePanel$13;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 3236
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$14;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/volume/VolumePanel$14;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    .line 751
    const-string v14, "%s.%08x"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "VolumePanel"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    .line 752
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    .line 753
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 754
    const-string v14, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 755
    const-string v14, "accessibility"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 757
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "com.sec.feature.cocktailbar"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumePanel;->mUseCocktailFeature:Z

    .line 759
    const-string v14, "#ff0094b0"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/volume/VolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mIconButtonActiveColor:Landroid/content/res/ColorStateList;

    .line 760
    const-string v14, "#ff919799"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/volume/VolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 761
    const-string v14, "#990094b0"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/volume/VolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mIconButtonDisableColor:Landroid/content/res/ColorStateList;

    .line 762
    const-string v14, "#99919799"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/volume/VolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mIconDisableColor:Landroid/content/res/ColorStateList;

    .line 764
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v14, :cond_0

    .line 765
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mSafetyValue:I

    .line 767
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d0442

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/VolumePanel;->mSafetyValue:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->kidsModeSafetyToast:Landroid/widget/Toast;

    .line 770
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 771
    .local v10, "res":Landroid/content/res/Resources;
    const v14, 0x1120012

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 772
    .local v12, "useMasterVolume":Z
    if-eqz v12, :cond_2

    .line 773
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget-object v14, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v14, v14

    if-ge v5, v14, :cond_2

    .line 774
    sget-object v14, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v11, v14, v5

    .line 775
    .local v11, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v14, v11, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    const/16 v15, -0x64

    if-ne v14, v15, :cond_1

    const/4 v14, 0x1

    :goto_1
    iput-boolean v14, v11, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    .line 773
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 775
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 778
    .end local v5    # "i":I
    .end local v11    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_2
    sget-boolean v14, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v15, "new VolumePanel"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_3
    const/high16 v14, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    .line 781
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 782
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0x0

    const v17, 0x1010033

    aput v17, v15, v16

    invoke-virtual {v14, v15}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 784
    .local v2, "arr":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    .line 785
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 788
    .end local v2    # "arr":Landroid/content/res/TypedArray;
    :cond_4
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/volume/VolumePanel$2;-><init>(Lcom/android/systemui/volume/VolumePanel;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 801
    .local v13, "window":Landroid/view/Window;
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/Window;->requestFeature(I)Z

    .line 802
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 807
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const v15, 0x7f0400d0

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setContentView(I)V

    .line 809
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v15, Lcom/android/systemui/volume/VolumePanel$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/volume/VolumePanel$3;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->create()V

    .line 824
    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 825
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v14, 0x0

    iput-object v14, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 831
    const v14, 0x7f0c02fb

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 832
    const/16 v14, 0x7e4

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 834
    const/4 v14, -0x3

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 835
    const v14, 0x7f10003e

    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 836
    const-string v14, "VolumePanel"

    invoke-virtual {v6, v14}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 839
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->updateLayout()V

    .line 841
    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v13, v14}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 842
    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/view/Window;->clearFlags(I)V

    .line 843
    const v14, 0x1040028

    invoke-virtual {v13, v14}, Landroid/view/Window;->addFlags(I)V

    .line 847
    const v14, 0x1020002

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    .line 848
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    new-instance v15, Lcom/android/systemui/volume/VolumePanel$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/volume/VolumePanel$4;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-static {v14, v15}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e03d2

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 856
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e03d3

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    .line 857
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e03d8

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/volume/ZenModePanel;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    .line 859
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/systemui/volume/ZenModePanel;->setVisibility(I)V

    .line 863
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e0047

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 864
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    new-instance v15, Lcom/android/systemui/volume/VolumePanel$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/volume/VolumePanel$5;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e0049

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mDivider:Landroid/view/View;

    .line 920
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e004c

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mBottomMarginView:Landroid/view/View;

    .line 921
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v15, 0x7f0e03d4

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCollapseMarginView:Landroid/view/View;

    .line 931
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/VolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/volume/VolumePanel;->setVolumeResourcesAsTheme(Landroid/view/View;Landroid/view/View;)V

    .line 933
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->initBottomMediaPanel()V

    .line 935
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->initZenModePanel()V

    .line 941
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v14

    new-array v14, v14, [Landroid/media/ToneGenerator;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 942
    const-string v14, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 945
    new-instance v14, Landroid/media/SoundPool;

    const/4 v15, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    .line 946
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    new-instance v15, Lcom/android/systemui/volume/VolumePanel$LoadListener;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/systemui/volume/VolumePanel$LoadListener;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V

    invoke-virtual {v14, v15}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 947
    const/4 v3, 0x0

    .local v3, "effect":I
    :goto_2
    const/4 v14, 0x1

    if-ge v3, v14, :cond_5

    .line 948
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/media/audio/ui/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    move-object/from16 v16, v0

    aget-object v16, v16, v3

    const/16 v17, 0x0

    aget v16, v16, v17

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 949
    .local v4, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v14, v14, v3

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v16

    aput v16, v14, v15

    .line 947
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 953
    .end local v4    # "filePath":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1120045

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    .line 955
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v14, :cond_6

    if-nez v12, :cond_6

    .line 959
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    .line 961
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/VolumePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v14, v15}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 964
    :cond_6
    const v14, 0x1120012

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 965
    .local v8, "masterVolumeOnly":Z
    const v14, 0x1120013

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 966
    .local v7, "masterVolumeKeySounds":Z
    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    .line 968
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->registerReceiver()V

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->registerCoverReceiver()V

    .line 971
    new-instance v14, Lcom/android/systemui/volume/VolumePanel$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/volume/VolumePanel$6;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 1009
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1010
    .local v9, "pm":Landroid/content/pm/PackageManager;
    if-eqz v9, :cond_7

    .line 1011
    const-string v14, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v9, v14}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverLevel:I

    .line 1013
    :cond_7
    const v14, 0x1050159

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->mTopOffset:I

    .line 1014
    const v14, 0x105015a

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumePanel;->sCoverTopOffset:I

    .line 1016
    return-void

    .line 966
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    .line 284
    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    .line 678
    :array_1
    .array-data 4
        0x7f0a007f
        0x7f0205e2
        0x7f0205de
        0x7f0a0081
    .end array-data

    .line 685
    :array_2
    .array-data 4
        0x7f0a0080
        0x7f0205e1
        0x7f0205dd
        0x7f0a0082
    .end array-data
.end method

.method private IsTenDigitSame(II)Z
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "currentIndex"    # I

    .prologue
    .line 1379
    const-string v4, "VolumePanel"

    const-string v5, "IsTenDigitSame"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    const/4 v3, 0x0

    .line 1382
    .local v3, "tenDigitIsSame":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v2

    .line 1383
    .local v2, "preQuotient":I
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : preQuotient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : currentIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    div-int/lit8 v0, p2, 0xa

    .line 1393
    .local v0, "curQuotient":I
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : preQuotient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : curQuotient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    sub-int v1, v2, v0

    .line 1397
    .local v1, "diff":I
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : diff = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    if-nez v1, :cond_0

    .line 1400
    const/4 v3, 0x1

    .line 1403
    :cond_0
    return v3
.end method

.method private IsUnitDigitZero(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1367
    const-string v2, "VolumePanel"

    const-string v3, "IsUnitDigitZero"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const/4 v1, 0x0

    .line 1369
    .local v1, "unitNumIsZero":Z
    rem-int/lit8 v0, p1, 0xa

    .line 1370
    .local v0, "remainder":I
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsUnitDigitZero : remainder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    if-nez v0, :cond_0

    .line 1372
    const/4 v1, 0x1

    .line 1374
    :cond_0
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsUnitDigitZero : unitNumIsZero = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    return v1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->L_AMERICANO:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/VolumePanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->setZenPanelVisible(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/VolumePanel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/VolumePanel;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/android/systemui/volume/VolumePanel;->mValueForHwSwKey:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/volume/VolumePanel;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # J

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/android/systemui/volume/VolumePanel;->mValueForHwSwKey:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumePanel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J

    .prologue
    .line 137
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/volume/VolumePanel;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->expand()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumePanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->sendCoverWarningMsgIntent(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mUseCocktailFeature:Z

    return v0
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->closeCocktail()V

    return-void
.end method

.method static synthetic access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 137
    sput-object p0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumePanel;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/VolumePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/volume/VolumePanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->showSilentHint()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/VolumePanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->setStreamTypeForLogging(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumePanel;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # J

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/VolumePanel;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaVolumeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mIsShowingSCoverWarning:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumePanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method private addOtherVolumes()V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    .line 1584
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1586
    .local v1, "res":Landroid/content/res/Resources;
    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v4, v5, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    if-eqz v4, :cond_1

    .line 1587
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1588
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    .line 1591
    const v4, 0x1080a5b

    iput v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 1592
    const v4, 0x1080a5d

    iput v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1593
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, 0x10408d2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1594
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1595
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v5, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1596
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1597
    sget-boolean v4, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "VolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_RING"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1599
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1605
    .end local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 1607
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v3, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 1608
    .local v3, "streamType":I
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v3, v4, :cond_3

    .line 1605
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1612
    :cond_3
    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 1617
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1618
    .restart local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    iput v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 1619
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    iput v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1620
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1628
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1629
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v5, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1630
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1631
    sget-boolean v4, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_5

    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOtherVolumes stream : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1633
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1635
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1639
    .end local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v3    # "streamType":I
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v5, 0x168

    invoke-static {v4, v5}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v4, v8, :cond_8

    .line 1640
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1641
    .restart local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    const v4, 0x1080a66

    iput v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 1642
    const v4, 0x1080a68

    iput v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1643
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, 0x10408d5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1644
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1645
    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v5, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1646
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1647
    sget-boolean v4, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_7

    const-string v4, "VolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_SYSTEM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1649
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1651
    iget-object v4, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1654
    .end local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_8
    return-void
.end method

.method private announceDialogShown()V
    .locals 2

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2665
    return-void
.end method

.method private checkEmergnecyMode()V
    .locals 2

    .prologue
    .line 2625
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isEmergencyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2626
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2628
    :cond_0
    return-void
.end method

.method private checkShowingDividerUpSoundmde()V
    .locals 0

    .prologue
    .line 2661
    return-void
.end method

.method private clearRemoteStreamController()V
    .locals 3

    .prologue
    .line 2769
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 2770
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2771
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 2772
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 2773
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2774
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 2778
    .end local v0    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method private closeCocktail()V
    .locals 6

    .prologue
    .line 3297
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v1

    .line 3298
    .local v1, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanelProvider;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 3300
    .local v0, "cocktailIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 3301
    aget v3, v0, v2

    const v4, 0x10004

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->closeCocktail(II)V

    .line 3300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3304
    :cond_0
    return-void
.end method

.method private collapse()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1954
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 1955
    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v5, v5, v1

    iget v4, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 1956
    .local v4, "streamType":I
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1957
    .local v3, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget-object v5, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1958
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1959
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0x12f

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1977
    :goto_1
    iget-object v5, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1979
    iget-object v5, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1983
    iget-object v5, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1954
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1962
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0x1e0

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1963
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0x10b

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 1966
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0xcb

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 1986
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v4    # "streamType":I
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1987
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1988
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1989
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mCollapseMarginView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1994
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaVolumePanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1997
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1998
    .local v0, "count":I
    const/4 v1, 0x1

    :goto_2
    if-ge v1, v0, :cond_3

    .line 1999
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1998
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2001
    :cond_3
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3307
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 3308
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private createCoverMsgRemoteView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverType:I

    .line 603
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 604
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400cf

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 608
    .local v0, "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :goto_0
    return-object v0

    .line 606
    .end local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400ce

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method private createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "queryMethod"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2005
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2006
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2008
    .local v6, "cr":Landroid/database/Cursor;
    return-object v6
.end method

.method private createSliders()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1423
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1424
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1427
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v7, Landroid/util/SparseArray;

    sget-object v10, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v10, v10

    invoke-direct {v7, v10}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    .line 1429
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v7, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_6

    .line 1430
    sget-object v7, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 1432
    .local v5, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v6, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 1434
    .local v6, "streamType":I
    new-instance v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v12}, Lcom/android/systemui/volume/VolumePanel$StreamControl;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V

    .line 1435
    .local v4, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iput v6, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    .line 1440
    const v7, 0x7f0400d4

    invoke-virtual {v1, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 1443
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1444
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e03d5

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 1445
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1446
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v10, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1447
    iget v7, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 1448
    iget v7, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1449
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v10, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1451
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e0048

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    .line 1452
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget v10, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1453
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleTextColor:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1454
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1455
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e004a

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    .line 1456
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1458
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1459
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->isClickable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1460
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 1477
    :cond_0
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e03d6

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 1482
    if-eq v6, v11, :cond_1

    if-nez v6, :cond_5

    :cond_1
    move v2, v9

    .line 1485
    .local v2, "plusOne":I
    :goto_1
    const-string v7, "VolumePanel"

    const-string v10, "createSliders : SUPPORT_FINEVOLUME = false"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 1491
    :cond_2
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1494
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1495
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 1496
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1498
    if-eq v6, v11, :cond_3

    if-nez v6, :cond_4

    .line 1499
    :cond_3
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v9}, Landroid/widget/SeekBar;->setMin(I)V

    .line 1429
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .end local v2    # "plusOne":I
    :cond_5
    move v2, v8

    .line 1482
    goto :goto_1

    .line 1503
    .end local v4    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v5    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    .end local v6    # "streamType":I
    :cond_6
    return-void
.end method

.method private expand()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x8

    .line 1856
    iget v8, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    const/4 v2, 0x1

    .line 1857
    .local v2, "isActiveStreamMusic":Z
    :goto_0
    const-string v8, "VolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expand : isActiveStreamMusic = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1859
    .local v0, "count":I
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    iget v9, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1860
    .local v3, "last_sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1864
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1860
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "isActiveStreamMusic":Z
    .end local v3    # "last_sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    move v2, v7

    .line 1856
    goto :goto_0

    .line 1867
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "isActiveStreamMusic":Z
    .restart local v3    # "last_sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    sget-object v8, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v8, v8

    if-ge v1, v8, :cond_3

    .line 1868
    sget-object v8, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v8, v8, v1

    iget v6, v8, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 1869
    .local v6, "streamType":I
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1870
    .local v5, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    move-object v3, v5

    .line 1871
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1872
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, v6, v5}, Lcom/android/systemui/volume/VolumePanel;->setDualColorSeekbar(ILcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1878
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v9, 0x1e0

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1879
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v9, 0x14b

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1892
    :goto_3
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v4}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1895
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1915
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/volume/VolumePanel;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1916
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1867
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1882
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v9, 0x10b

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    .line 1919
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v6    # "streamType":I
    :cond_3
    iget-object v8, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1921
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1922
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1923
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mCollapseMarginView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1924
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1951
    return-void
.end method

.method private forceTimeout(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v3, 0x5

    .line 3121
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceTimeout delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 3123
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 3124
    return-void
.end method

.method private getDefaultThemeType()Z
    .locals 3

    .prologue
    .line 674
    const-string v1, "white"

    const-string v2, "ro.build.scafe.cream"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 675
    .local v0, "isWhiteTheme":Z
    return v0
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 2939
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 2943
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    .line 2944
    const/4 p1, 0x1

    .line 2949
    :cond_0
    monitor-enter p0

    .line 2950
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 2952
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2960
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    .line 2946
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2953
    :catch_0
    move-exception v0

    .line 2954
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 2955
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2961
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getStreamMaxVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1287
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 1288
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v2

    .line 1299
    :goto_0
    return v2

    .line 1289
    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    .line 1290
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 1291
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1292
    .local v1, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 1293
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 1294
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v2

    goto :goto_0

    .line 1297
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v1    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 1299
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1304
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 1305
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v2

    .line 1316
    :goto_0
    return v2

    .line 1306
    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    .line 1307
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 1308
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1309
    .local v1, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 1310
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 1311
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v2

    goto :goto_0

    .line 1314
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v1    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 1316
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cr"    # Landroid/database/Cursor;
    .param p2, "queryMethod"    # Ljava/lang/String;

    .prologue
    .line 2012
    const/4 v0, 0x0

    .line 2014
    .local v0, "queryResult":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2016
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2017
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2019
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2023
    :cond_0
    return-object v0

    .line 2019
    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 1761
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1763
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 1764
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 1765
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1766
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 1767
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1768
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 1776
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1773
    :catch_0
    move-exception v0

    .line 1774
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "VolumePanel"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1776
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getUnitDigitNumber(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1419
    rem-int/lit8 v0, p1, 0xa

    return v0
.end method

.method private initBottomMediaPanel()V
    .locals 3

    .prologue
    .line 1167
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1169
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v2, 0x7f0e0059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaVolumePanel:Landroid/view/ViewGroup;

    .line 1170
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v2, 0x7f0e0056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaVolumeTitle:Landroid/widget/TextView;

    .line 1171
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v2, 0x7f0e0057

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaVolumeIcon:Landroid/widget/ImageView;

    .line 1172
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v2, 0x7f0e0058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    .line 1174
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaVolumeTitle:Landroid/widget/TextView;

    const v2, 0x10408d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaVolumeIcon:Landroid/widget/ImageView;

    const v2, 0x1080a6d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1180
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1182
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekListenerForBottomMedia:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1183
    return-void
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-nez v0, :cond_0

    .line 1033
    new-instance v0, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v0}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 1035
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    :goto_0
    const-string v0, "VolumePanel"

    const-string v1, "initCoverManager: initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 1043
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 1045
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverType:I

    .line 1049
    :cond_0
    :goto_1
    return-void

    .line 1047
    :cond_1
    const-string v0, "VolumePanel"

    const-string v1, "initCoverManager fail NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1038
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1036
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private initZenModePanel()V
    .locals 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 1187
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    new-instance v1, Lcom/android/systemui/volume/VolumePanel$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanel$7;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    .line 1231
    return-void
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 727
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : appId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : feature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_2
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 733
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 734
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 739
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 741
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 743
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_4

    const-string v2, "VolumePanel"

    const-string v3, "insertLog : Call sendBoradcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 748
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_5
    return-void
.end method

.method private isDeviceOutSpeaker()Z
    .locals 2

    .prologue
    .line 3287
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-static {v1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 3288
    .local v0, "device":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 3289
    const/4 v1, 0x1

    .line 3291
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEmergencyModeEnabled()Z
    .locals 2

    .prologue
    .line 1162
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    .line 1163
    .local v0, "isEmergencyMode":Z
    return v0
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 1264
    const/16 v2, -0x64

    if-ne p1, v2, :cond_1

    .line 1265
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v1

    .line 1282
    :cond_0
    :goto_0
    return v1

    .line 1266
    :cond_1
    const/16 v2, -0xc8

    if-eq p1, v2, :cond_0

    .line 1269
    if-ne p1, v3, :cond_2

    .line 1270
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1280
    .local v0, "progress":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1282
    .end local v0    # "progress":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    goto :goto_0
.end method

.method private static isNotificationOrRing(I)Z
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 2041
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowing()Z
    .locals 1

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public static isUSA()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3312
    const-string v2, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 3315
    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string v2, "usa"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3324
    :cond_0
    :goto_0
    return v1

    .line 3317
    :cond_1
    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MTR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CSP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CRI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3324
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isZenPanelVisible()Z
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeFineVolumeParam(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1411
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getUnitDigitNumber(I)I

    move-result v1

    .line 1412
    .local v1, "unitDigit":I
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeFineVolumeParam : index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeFineVolumeParam : unitDigit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioParam;fine_volume="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1415
    .local v0, "fullFineVolumeParam":Ljava/lang/String;
    return-object v0
.end method

.method private makeTenDigitVolumeParam(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1407
    div-int/lit8 v0, p1, 0xa

    return v0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "phoneOffhook":Z
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    .line 457
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 471
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneIsOffhook : phoneOffhook = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_1
    return v0

    .line 459
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 460
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 1239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1240
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1241
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1242
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/volume/VolumePanel$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumePanel$8;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1261
    return-void
.end method

.method private reorderSliders(I)V
    .locals 6
    .param p1, "activeStreamType"    # I

    .prologue
    .line 1545
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1547
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1549
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1550
    .local v0, "active":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 1551
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing stream type! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 1576
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->addOtherVolumes()V

    .line 1579
    return-void

    .line 1554
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1555
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 1556
    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1558
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1559
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    if-ne p1, v3, :cond_2

    .line 1560
    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1561
    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1562
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1564
    iget-object v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1570
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1571
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    .line 1572
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateZenPanelVisible()V

    goto :goto_0

    .line 1558
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private resetTimeout()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x5

    .line 3108
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 3109
    .local v0, "touchExploration":Z
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetTimeout at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " touchExploration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    :cond_0
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 3112
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 3113
    const-string v1, "VolumePanel"

    const-string v2, "resetTimeout : call sendEmptyMessageDelayed : MSG_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 3115
    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 3116
    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessage(I)Z

    .line 3118
    :cond_2
    return-void
.end method

.method private sendCoverWarningMsgIntent(Z)V
    .locals 4
    .param p1, "coverMessageEnabled"    # Z

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createCoverMsgRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 615
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 617
    const-string v2, "type"

    const-string v3, "volume"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 619
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 620
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel;->mIsShowingSCoverWarning:Z

    .line 621
    return-void
.end method

.method private setDualColorMediaSlider()V
    .locals 2

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isDeviceOutSpeaker()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3272
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMode(I)V

    .line 3277
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mSafetyValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    .line 3283
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 3284
    return-void

    .line 3280
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setDualColorSeekbar(ILcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    const/4 v2, 0x3

    .line 3250
    if-eq p1, v2, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 3251
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isDeviceOutSpeaker()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3253
    :cond_1
    iget-object v0, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMode(I)V

    .line 3255
    iget v0, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    if-ne v0, v2, :cond_2

    .line 3259
    :cond_2
    iget-object v0, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    .line 3266
    :cond_3
    :goto_0
    iget-object v0, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 3267
    return-void

    .line 3263
    :cond_4
    iget-object v0, p2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 1235
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    .line 1236
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "resMuteId"    # I

    .prologue
    const/4 v3, 0x3

    .line 2970
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2971
    .local v1, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_0

    .line 2972
    iput p1, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 2973
    iput p2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 2975
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 2986
    .local v0, "progress":I
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMusicIcon progress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    if-eqz v0, :cond_1

    .line 2988
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080a6c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2992
    .end local v0    # "progress":I
    :cond_0
    :goto_0
    return-void

    .line 2990
    .restart local v0    # "progress":I
    :cond_1
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080a70

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setStreamTypeForLogging(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 2604
    packed-switch p1, :pswitch_data_0

    .line 2621
    :goto_0
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStreamTypeForLogging : mExtraForRingerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    :cond_0
    return-void

    .line 2606
    :pswitch_1
    const-string v0, "System"

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 2610
    :pswitch_2
    const-string v0, "Ringtone"

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 2614
    :pswitch_3
    const-string v0, "Media"

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 2618
    :pswitch_4
    const-string v0, "Notification"

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 2604
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1321
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStreamVolume : index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const-string v0, "VolumePanel"

    const-string v1, "setStreamVolume : SUPPORT_FINEVOLUME = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_2

    .line 1324
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 1325
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v0, p2, p3}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "Adjusting remote volume without a controller!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1329
    :cond_2
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1330
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_3

    .line 1331
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    goto :goto_0

    .line 1333
    :cond_3
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1346
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private setTenDigitMediaVolume(III)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1353
    const-string v1, "VolumePanel"

    const-string v2, "setTenDigitMediaVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/VolumePanel;->makeTenDigitVolumeParam(I)I

    move-result v0

    .line 1355
    .local v0, "tenDigitVolume":I
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTenDigitMediaVolume : tenDigitVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1, v0, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1357
    return-void
.end method

.method private setUnitDigtMediaVolume(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1360
    const-string v1, "VolumePanel"

    const-string v2, "setUnitDigtMediaVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->makeFineVolumeParam(I)Ljava/lang/String;

    move-result-object v0

    .line 1362
    .local v0, "fineVolume":Ljava/lang/String;
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUnitDigtMediaVolume : fineVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1364
    return-void
.end method

.method private setVolumeResourcesAsTheme(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "moreButton"    # Landroid/view/View;
    .param p2, "divider"    # Landroid/view/View;

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->getDefaultThemeType()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mIsWhiteTheme:Z

    .line 694
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mIsWhiteTheme:Z

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->volumeWhiteThemeResources:[I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->setVolumeResrouces([ILandroid/view/View;Landroid/view/View;)V

    .line 699
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->volumeDarkThemeResources:[I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->setVolumeResrouces([ILandroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method private setVolumeResrouces([ILandroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "themeResource"    # [I
    .param p2, "moreButton"    # Landroid/view/View;
    .param p3, "divider"    # Landroid/view/View;

    .prologue
    .line 702
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0e0046

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 704
    .local v0, "volumeDialogLayout":Landroid/widget/FrameLayout;
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "moreButton":Landroid/view/View;
    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 705
    check-cast p3, Landroid/widget/ImageView;

    .end local p3    # "divider":Landroid/view/View;
    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 706
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mVolumeTitleTextColor:I

    .line 707
    return-void
.end method

.method private setVolumepanelWindowType()V
    .locals 0

    .prologue
    .line 2645
    return-void
.end method

.method private setZenPanelVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2069
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setZenPanelVisible "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mZenPanel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isZenPanelVisible()Z

    move-result v3

    if-eq p1, v3, :cond_2

    move v0, v1

    .line 2071
    .local v0, "changing":Z
    :goto_0
    if-eqz p1, :cond_3

    .line 2072
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->setHidden(Z)V

    .line 2073
    const-string v1, "VolumePanel"

    const-string v2, "setZenPanelVisible : call resetTimeout() #1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 2078
    :goto_1
    if-eqz v0, :cond_1

    .line 2079
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    .line 2080
    const-string v1, "VolumePanel"

    const-string v2, "setZenPanelVisible : call resetTimeout() #2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 2083
    :cond_1
    return-void

    .end local v0    # "changing":Z
    :cond_2
    move v0, v2

    .line 2070
    goto :goto_0

    .line 2076
    .restart local v0    # "changing":Z
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v2, v1}, Lcom/android/systemui/volume/ZenModePanel;->setHidden(Z)V

    goto :goto_1
.end method

.method private showInterruptionToast(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0496

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2032
    :cond_0
    return-void
.end method

.method private showSilentHint()V
    .locals 1

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel;->showSilentHint()V

    .line 2038
    :cond_0
    return-void
.end method

.method private toggle(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 2
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    const/4 v1, 0x2

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1535
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    .line 1542
    :goto_0
    return-void

    .line 1538
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1539
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 5

    .prologue
    .line 1089
    const-string v2, "VolumePanel"

    const-string v3, "===== Start updateLayout ====="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1091
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1116
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x31

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1118
    const v2, 0x7f0c038c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1120
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLayout : lp.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lp.y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1122
    return-void
.end method

.method private updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    .line 1781
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 1782
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 1784
    .local v0, "muted":Z
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1785
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1786
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    .line 1789
    return-void
.end method

.method private updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V
    .locals 7
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "muted"    # Z
    .param p3, "fixedVolume"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1792
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v2

    .line 1793
    .local v2, "wasEnabled":Z
    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v5}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    .line 1794
    .local v0, "isRinger":Z
    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v6, -0xc8

    if-ne v5, v6, :cond_3

    .line 1797
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-nez p3, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1827
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1828
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1829
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1830
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1844
    :cond_2
    :goto_1
    return-void

    .line 1798
    :cond_3
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-nez v5, :cond_5

    .line 1800
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1801
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->isUSA()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1802
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1803
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1804
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1813
    :goto_2
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 1806
    :cond_4
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1807
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1808
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_2

    .line 1815
    :cond_5
    if-nez p3, :cond_7

    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    iget-object v6, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v6

    if-eq v5, v6, :cond_6

    if-nez p2, :cond_7

    :cond_6
    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v5, :cond_8

    .line 1818
    :cond_7
    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 1819
    iget-object v5, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 1822
    :cond_8
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1823
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1824
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1832
    :cond_9
    new-instance v1, Lcom/android/systemui/volume/VolumePanel$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanel$10;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1841
    .local v1, "showHintOnTouch":Landroid/view/View$OnTouchListener;
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method private updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V
    .locals 7
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "muted"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1692
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    iget v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1693
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1694
    .local v1, "ringerMode":I
    const/4 v0, 0x0

    .line 1699
    .local v0, "isZenPriority":Z
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v3}, Lcom/android/systemui/volume/ZenModePanel;->getCurrentZenMode()I

    move-result v2

    .line 1700
    .local v2, "zen":I
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSliderIcon : zen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_0
    if-ne v2, v6, :cond_1

    .line 1702
    const/4 v0, 0x1

    .line 1704
    :cond_1
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_2

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSliderIcon : isZenPriority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_2
    iget v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    if-ne v3, v6, :cond_3

    if-ne v1, v6, :cond_3

    .line 1708
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v4, 0x1080a6a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1710
    :cond_3
    iget v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1711
    iget v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 1724
    if-ne v1, v6, :cond_4

    .line 1725
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v4, 0x1080a61

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1733
    :cond_4
    :goto_1
    if-nez v1, :cond_8

    .line 1734
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    .line 1742
    :cond_5
    :goto_2
    return-void

    .line 1692
    .end local v0    # "isZenPriority":Z
    .end local v1    # "ringerMode":I
    .end local v2    # "zen":I
    :cond_6
    iget v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0

    .line 1727
    .restart local v0    # "isZenPriority":Z
    .restart local v1    # "ringerMode":I
    .restart local v2    # "zen":I
    :cond_7
    iget v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    if-ne v1, v6, :cond_4

    .line 1729
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v4, 0x1080a58

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1736
    :cond_8
    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    goto :goto_2
.end method

.method private updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V
    .locals 4
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "progress"    # I

    .prologue
    .line 1658
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSliderProgress : progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    .line 1660
    .local v0, "isRinger":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 1661
    iget p2, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    .line 1663
    :cond_0
    if-gez p2, :cond_2

    .line 1664
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result p2

    .line 1665
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 1667
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 1671
    :cond_2
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/volume/VolumePanel;->setDualColorSeekbar(ILcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 1673
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1684
    :cond_3
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1686
    if-eqz v0, :cond_4

    .line 1687
    iput p2, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    .line 1689
    :cond_4
    return-void
.end method

.method private updateSliderSupressor(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    .line 1745
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 1747
    .local v0, "suppressor":Landroid/content/ComponentName;
    :goto_0
    if-nez v0, :cond_1

    .line 1748
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1758
    :goto_1
    return-void

    .line 1745
    .end local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1751
    .restart local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateTimeoutDelay()V
    .locals 2

    .prologue
    .line 2056
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/16 v0, 0x1388

    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    .line 2062
    return-void

    .line 2056
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x2710

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isZenPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1194

    goto :goto_0

    :cond_3
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private updateZenPanelVisible()V
    .locals 1

    .prologue
    .line 2123
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->setZenPanelVisible(Z)V

    .line 2125
    return-void

    .line 2123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1125
    const-string v3, "VolumePanel state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    const-string v3, "  mTag="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    const-string v3, "  mRingIsSilent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1128
    const-string v3, "  mVoiceCapable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1129
    const-string v3, "  mZenModeAvailable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1130
    const-string v3, "  mZenPanelExpanded="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1131
    const-string v3, "  mTimeoutDelay="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1132
    const-string v3, "  mDisabledAlpha="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 1133
    const-string v3, "  mLastRingerMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1134
    const-string v3, "  mLastRingerProgress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1135
    const-string v3, "  mPlayMasterStreamTones="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1136
    const-string v3, "  isShowing()="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1137
    const-string v3, "  mCallback="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1138
    const-string v3, "  sConfirmSafeVolumeDialog="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1139
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    const-string v3, "<not null>"

    :goto_0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1140
    const-string v3, "  mActiveStreamType="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1141
    const-string v3, "  mStreamControls="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1142
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v3, :cond_2

    .line 1143
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    :cond_0
    return-void

    .line 1139
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1145
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1146
    .local v0, "N":I
    const-string v3, "<size "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x3e

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 1147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 1148
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1149
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    const-string v3, "    stream "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1150
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-eqz v3, :cond_3

    .line 1151
    const-string v3, " progress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1152
    const-string v3, " of "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1153
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, " (disabled)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1155
    :cond_3
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, " (clickable)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1156
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 3007
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3105
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3010
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 3015
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 3020
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 3025
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 3030
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 3040
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3041
    const-string v1, "VolumePanel"

    const-string v2, "handleMessage : call mDialog.dismiss()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3043
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mUseCocktailFeature:Z

    if-eqz v1, :cond_1

    .line 3044
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->closeCocktail()V

    .line 3046
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->clearRemoteStreamController()V

    .line 3047
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 3048
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v1, :cond_2

    .line 3049
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-interface {v1, v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    .line 3052
    :cond_2
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3053
    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 3054
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v2, "SafetyWarning timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    :cond_3
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3057
    const-string v0, "VolumePanel"

    const-string v2, "handleMessage : call sSafetyWarning.dismiss()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3061
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3067
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3068
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    goto :goto_0

    .line 3074
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V

    goto/16 :goto_0

    .line 3079
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto/16 :goto_0

    .line 3083
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onSliderVisibilityChanged(II)V

    goto/16 :goto_0

    .line 3087
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto/16 :goto_0

    .line 3091
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->setLayoutDirection(I)V

    goto/16 :goto_0

    .line 3095
    :pswitch_d
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    .line 3096
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateZenPanelVisible()V

    goto/16 :goto_0

    .line 3100
    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v0, :cond_0

    .line 3101
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onInteraction()V

    goto/16 :goto_0

    .line 3007
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_7
    .end packed-switch
.end method

.method public isExtraButtonOn()Z
    .locals 6

    .prologue
    .line 476
    const/4 v2, 0x0

    .line 477
    .local v2, "rtvalue":Z
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "extraButtonOn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "audioParam;extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "extraButtonOnDevice":Ljava/lang/String;
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    .line 481
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOnDevice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 486
    const/4 v2, 0x1

    .line 491
    :goto_0
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_1

    .line 492
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : rtvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_1
    return v2

    .line 488
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSafeVolumeDialogShowing()Z
    .locals 1

    .prologue
    .line 2213
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSviewCoverOpened()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 498
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 500
    .local v0, "state":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v0, :cond_0

    .line 501
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCoverManager.getCoverState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    .line 509
    .end local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :goto_0
    return v1

    .line 504
    .restart local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    const-string v2, "VolumePanel"

    const-string v3, "state is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    .end local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    const-string v2, "VolumePanel"

    const-string v3, "mCoverManager is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1066
    const-string v5, "VolumePanel"

    const-string v6, "===== Start onConfigurationChanged ====="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const-string v5, "VolumePanel"

    const-string v6, "onConfigurationChanged : call updateLayout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateLayout()V

    .line 1070
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 1071
    sget-object v5, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v3, v5, v0

    .line 1073
    .local v3, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v5, :cond_0

    .line 1074
    iget v4, v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 1075
    .local v4, "streamType":I
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1076
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1077
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 1078
    iget-object v5, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v5, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1070
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v4    # "streamType":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1083
    .end local v3    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v5, :cond_2

    .line 1084
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v5}, Lcom/android/systemui/volume/ZenModePanel;->updateButtonText()V

    .line 1086
    :cond_2
    return-void
.end method

.method protected onDismissSafeVolumeWarning()V
    .locals 3

    .prologue
    .line 2920
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2921
    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2922
    const-string v0, "VolumePanel"

    const-string v2, "onDismissSafeVolumeWarning : call sSafetyWarning.dismiss()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2925
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2927
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mIsShowingSCoverWarning:Z

    if-eqz v0, :cond_2

    .line 2928
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "VolumePanel"

    const-string v1, "dismiss warning popup on the s view cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->sendCoverWarningMsgIntent(Z)V

    .line 2932
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 2933
    return-void

    .line 2925
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 22
    .param p1, "flags"    # I

    .prologue
    .line 2804
    const/high16 v18, 0x20000

    and-int v18, v18, p1

    if-eqz v18, :cond_0

    .line 2805
    const-string v18, "VolumePanel"

    const-string v19, "onDisplaySafeVolumeWarning : get FLAG_DISMISS_UI_WARNINGS, call onDismissSafeVolumeWarning"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->onDismissSafeVolumeWarning()V

    .line 2808
    const-string v18, "VolumePanel"

    const-string v19, "onDisplaySafeVolumeWarning : return"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :goto_0
    return-void

    .line 2812
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "kids_home_mode"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/4 v10, 0x1

    .line 2814
    .local v10, "isKidsMode":Z
    :goto_1
    const/4 v9, 0x1

    .line 2815
    .local v9, "isCoverOpen":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->isSviewCoverOpened()Z

    move-result v9

    .line 2819
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v11

    .line 2821
    .local v11, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    const-string v18, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v19, "getSealedState"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2823
    .local v5, "cr":Landroid/database/Cursor;
    const-string v18, "getSealedState"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/android/systemui/volume/VolumePanel;->getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2825
    .local v6, "getSealedState":Ljava/lang/String;
    if-eqz v11, :cond_2

    if-eqz v6, :cond_2

    const-string v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v11}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getSealedHideNotificationMessages()I

    move-result v18

    and-int/lit8 v18, v18, 0x4

    if-eqz v18, :cond_2

    .line 2830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 2910
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 2911
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    goto :goto_0

    .line 2812
    .end local v5    # "cr":Landroid/database/Cursor;
    .end local v6    # "getSealedState":Ljava/lang/String;
    .end local v9    # "isCoverOpen":Z
    .end local v10    # "isKidsMode":Z
    .end local v11    # "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 2831
    .restart local v5    # "cr":Landroid/database/Cursor;
    .restart local v6    # "getSealedState":Ljava/lang/String;
    .restart local v9    # "isCoverOpen":Z
    .restart local v10    # "isKidsMode":Z
    .restart local v11    # "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    :cond_2
    if-eqz v10, :cond_3

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->kidsModeSafetyToast:Landroid/widget/Toast;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 2833
    :cond_3
    const-string v18, "sys.hmt.connected"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    goto :goto_2

    .line 2839
    :cond_4
    sget-object v19, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v19

    .line 2840
    :try_start_0
    sget-object v18, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v18, :cond_7

    .line 2841
    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumePanel;->mIsShowingSCoverWarning:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 2843
    sget-boolean v18, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_5

    const-string v18, "VolumePanel"

    const-string v20, "show warning popup on the s view cover and than return"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    :cond_5
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->sendCoverWarningMsgIntent(Z)V

    .line 2847
    :cond_6
    monitor-exit v19

    goto/16 :goto_0

    .line 2906
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 2849
    :cond_7
    :try_start_1
    new-instance v18, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumePanel;Landroid/media/AudioManager;)V

    sput-object v18, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    .line 2851
    const-string v18, "VolumePanel"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isCoverOpen = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    if-eqz v9, :cond_c

    .line 2853
    const-string v18, "VolumePanel"

    const-string v20, "cover open, warning popup window type is set to TYPE_VOLUME_OVERLAY"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    sget-object v18, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v20, 0x7e4

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2860
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->isShowing()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 2861
    const-string v18, "VolumePanel"

    const-string v20, "onDisplaySafeVolumeWarning :  call mDialog.dismiss()"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->dismiss()V

    .line 2863
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 2867
    :cond_8
    sget-object v18, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->show()V

    .line 2869
    sget-object v18, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/16 v20, 0x3

    aget-object v16, v18, v20

    .line 2870
    .local v16, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 2871
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    move/from16 v17, v0

    .line 2872
    .local v17, "streamType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2873
    .local v15, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v15, :cond_9

    .line 2874
    iget-object v0, v15, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 2879
    .end local v15    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v17    # "streamType":I
    :cond_9
    if-nez v9, :cond_b

    .line 2881
    sget-boolean v18, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_a

    const-string v18, "VolumePanel"

    const-string v20, "show warning popup on the s view cover"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/VolumePanel;->mCoverType:I

    .line 2884
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverType:I

    move/from16 v18, v0

    const/16 v20, 0x6

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 2885
    new-instance v14, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const v20, 0x7f0400cf

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2889
    .local v14, "remoteViews":Landroid/widget/RemoteViews;
    :goto_4
    new-instance v4, Landroid/content/Intent;

    const-string v18, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2890
    .local v4, "coverIntent":Landroid/content/Intent;
    const-string v18, "visibility"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2891
    const-string v18, "type"

    const-string v20, "volume"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2892
    const-string v18, "remote"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2894
    new-instance v7, Landroid/content/Intent;

    const-string v18, "android.view.volumepanel.CLICK_BUTTON1"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2895
    .local v7, "intent1":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 2897
    .local v12, "pendingIntent1":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.view.volumepanel.CLICK_BUTTON2"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2898
    .local v8, "intent2":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 2900
    .local v13, "pendingIntent2":Landroid/app/PendingIntent;
    const v18, 0x7f0e03d0

    move/from16 v0, v18

    invoke-virtual {v14, v0, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2901
    const v18, 0x7f0e03d1

    move/from16 v0, v18

    invoke-virtual {v14, v0, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2903
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/VolumePanel;->mIsShowingSCoverWarning:Z

    .line 2906
    .end local v4    # "coverIntent":Landroid/content/Intent;
    .end local v7    # "intent1":Landroid/content/Intent;
    .end local v8    # "intent2":Landroid/content/Intent;
    .end local v12    # "pendingIntent1":Landroid/app/PendingIntent;
    .end local v13    # "pendingIntent2":Landroid/app/PendingIntent;
    .end local v14    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_b
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2907
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    goto/16 :goto_2

    .line 2856
    .end local v16    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_c
    :try_start_2
    const-string v18, "VolumePanel"

    const-string v20, "cover closed, warning popup window type is set to TYPE_KEYGUARD_DIALOG"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    sget-object v18, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v20, 0x7d9

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_3

    .line 2887
    .restart local v16    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_d
    new-instance v14, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const v20, 0x7f0400ce

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v14    # "remoteViews":Landroid/widget/RemoteViews;
    goto/16 :goto_4

    .line 2913
    .end local v14    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v16    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    .line 2914
    const-string v18, "VolumePanel"

    const-string v19, "onDisplaySafeVolumeWarning : call resetTimeout()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    goto/16 :goto_0
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 2995
    monitor-enter p0

    .line 2996
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2997
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 2998
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 3000
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 2996
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3002
    :cond_1
    monitor-exit p0

    .line 3003
    return-void

    .line 3002
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 2320
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2323
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 2324
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 2327
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    .line 2328
    return-void
.end method

.method protected onPlaySound(II)V
    .locals 11
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x1

    .line 2673
    invoke-virtual {p0, v10}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2674
    invoke-virtual {p0, v10}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2676
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    .line 2679
    :cond_0
    monitor-enter p0

    .line 2688
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 2689
    monitor-exit p0

    .line 2710
    :goto_0
    return-void

    .line 2692
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->mIsLoadSoundPool:Z

    if-nez v0, :cond_3

    .line 2693
    const-string v0, "VolumePanel"

    const-string v1, "soundpool is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    const/4 v8, 0x0

    .local v8, "effect":I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 2695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2696
    .local v9, "filePath":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v0, v0, v8

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2694
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2699
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_2
    const-wide/16 v0, 0x28

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2705
    .end local v8    # "effect":I
    :cond_3
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 2706
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2707
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2708
    invoke-virtual {p0, v10}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2700
    .restart local v8    # "effect":I
    :catch_0
    move-exception v7

    .line 2702
    .local v7, "e1":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2707
    .end local v7    # "e1":Ljava/lang/InterruptedException;
    .end local v8    # "effect":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 5
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, -0xc8

    .line 2736
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(controller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2740
    :cond_1
    monitor-enter p0

    .line 2741
    :try_start_0
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 2742
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V

    .line 2744
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 2745
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2750
    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2751
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2752
    const-string v0, "VolumePanel"

    const-string v1, "onRemoteVolumeChanged : call resetTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 2754
    return-void

    .line 2745
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2747
    :cond_4
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 2757
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 2761
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 2763
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(IILandroid/media/session/MediaController;)V
    .locals 24
    .param p1, "streamType"    # I
    .param p2, "flags"    # I
    .param p3, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 2331
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v9

    .line 2334
    .local v9, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->initCoverManager(Landroid/content/Context;)V

    .line 2336
    sget-boolean v20, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v20, :cond_0

    const-string v20, "VolumePanel"

    const-string v21, "onShowVolumeChanged():initCoverManager"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :cond_0
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    .line 2342
    sget-boolean v20, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v20, :cond_1

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onShowVolumeChanged(streamType: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", flags: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "), index: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v12

    .line 2350
    .local v12, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2352
    .local v14, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    sparse-switch p1, :sswitch_data_0

    .line 2438
    :cond_2
    :goto_0
    :sswitch_0
    if-eqz v14, :cond_6

    .line 2439
    const/16 v20, -0xc8

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    iget-object v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 2440
    iget-object v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 2441
    iget-object v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2443
    :cond_3
    move-object/from16 v0, p3

    iput-object v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 2444
    if-eqz p3, :cond_4

    .line 2445
    iget-object v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2448
    :cond_4
    iget-object v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SeekBar;->getMax()I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v12, :cond_5

    .line 2449
    iget-object v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2451
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 2452
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v21

    and-int/lit8 v20, p2, 0x20

    if-eqz v20, :cond_c

    const/16 v20, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v14, v1, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    .line 2457
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->isSviewCoverOpened()Z

    move-result v20

    if-nez v20, :cond_d

    .line 2458
    sget-object v20, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v20, :cond_d

    sget-object v20, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 2460
    const-string v20, "VolumePanel"

    const-string v21, "onShowVolumeChanged :  call mDialog.dismiss()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->dismiss()V

    .line 2462
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 2601
    :cond_7
    :goto_2
    return-void

    .line 2356
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v13

    .line 2358
    .local v13, "ringuri":Landroid/net/Uri;
    if-nez v13, :cond_2

    .line 2359
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 2366
    .end local v13    # "ringuri":Landroid/net/Uri;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x3a0

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 2373
    iget-object v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x1080a52

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2376
    :cond_8
    const v20, 0x1080a6c

    const v21, 0x1080a70

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 2387
    :sswitch_3
    add-int/lit8 v9, v9, 0x1

    .line 2388
    add-int/lit8 v12, v12, 0x1

    .line 2389
    goto/16 :goto_0

    .line 2397
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v13

    .line 2399
    .restart local v13    # "ringuri":Landroid/net/Uri;
    if-nez v13, :cond_2

    .line 2400
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 2411
    .end local v13    # "ringuri":Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v9, v9, 0x1

    .line 2412
    add-int/lit8 v12, v12, 0x1

    .line 2413
    goto/16 :goto_0

    .line 2417
    :sswitch_6
    if-nez p3, :cond_9

    if-eqz v14, :cond_9

    .line 2419
    iget-object v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 p3, v0

    .line 2421
    :cond_9
    if-nez p3, :cond_b

    .line 2423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "sent remote volume change without a controller!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_a
    :goto_3
    sget-boolean v20, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "showing remote volume "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " over "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2425
    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v19

    .line 2426
    .local v19, "vi":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v9

    .line 2427
    invoke-virtual/range {v19 .. v19}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v12

    .line 2428
    invoke-virtual/range {v19 .. v19}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v20

    and-int/lit8 v20, v20, 0x0

    if-eqz v20, :cond_a

    .line 2430
    or-int/lit8 p2, p2, 0x20

    goto :goto_3

    .line 2452
    .end local v19    # "vi":Landroid/media/session/MediaController$PlaybackInfo;
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 2469
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v20

    if-nez v20, :cond_15

    .line 2470
    const/16 v20, -0xc8

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    const/16 v18, -0x1

    .line 2472
    .local v18, "stream":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 2475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/volume/ZenModePanel;->getSegmentedButtonsPanel()Landroid/view/View;

    move-result-object v15

    .line 2476
    .local v15, "segmentedButtonsPanle":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/volume/ZenModePanel;->getSoundModePanel()Landroid/view/View;

    move-result-object v17

    .line 2477
    .local v17, "soundModepanel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/volume/ZenModePanel;->getSettingPanel()Landroid/view/View;

    move-result-object v16

    .line 2479
    .local v16, "settingPanel":Landroid/view/View;
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x4000

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 2480
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->expand()V

    .line 2497
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->isSviewCoverOpened()Z

    move-result v20

    if-nez v20, :cond_11

    .line 2498
    const-string v20, "VolumePanel"

    const-string v21, "onShowVolumeChanged: Cover is closed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mBottomMarginView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 2503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mCollapseMarginView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 2508
    if-eqz v14, :cond_e

    .line 2509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0389

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 2510
    .local v5, "cmargin":I
    if-eqz v5, :cond_e

    if-eqz v14, :cond_e

    .line 2511
    iget-object v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 2512
    .local v11, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    sub-int v20, v20, v5

    move/from16 v0, v20

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2513
    iget-object v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2536
    .end local v5    # "cmargin":I
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->updateLayout()V

    .line 2539
    sget-object v20, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v20, :cond_13

    sget-object v20, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 2540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 2541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->dismiss()V

    .line 2542
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    goto/16 :goto_2

    .end local v15    # "segmentedButtonsPanle":Landroid/view/View;
    .end local v16    # "settingPanel":Landroid/view/View;
    .end local v17    # "soundModepanel":Landroid/view/View;
    .end local v18    # "stream":I
    :cond_f
    move/from16 v18, p1

    .line 2470
    goto/16 :goto_4

    .line 2487
    .restart local v15    # "segmentedButtonsPanle":Landroid/view/View;
    .restart local v16    # "settingPanel":Landroid/view/View;
    .restart local v17    # "soundModepanel":Landroid/view/View;
    .restart local v18    # "stream":I
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->collapse()V

    goto/16 :goto_5

    .line 2520
    :cond_11
    const-string v20, "VolumePanel"

    const-string v21, "onShowVolumeChanged: Cover is opened"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x4000

    move/from16 v20, v0

    if-nez v20, :cond_12

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 2524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mBottomMarginView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 2525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mCollapseMarginView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 2532
    :cond_12
    if-eqz v14, :cond_e

    goto :goto_6

    .line 2547
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->checkShowingDividerUpSoundmde()V

    .line 2548
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->setVolumepanelWindowType()V

    .line 2553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->show()V

    .line 2555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    .line 2556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    .line 2558
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->announceDialogShown()V

    .line 2561
    .end local v15    # "segmentedButtonsPanle":Landroid/view/View;
    .end local v16    # "settingPanel":Landroid/view/View;
    .end local v17    # "soundModepanel":Landroid/view/View;
    .end local v18    # "stream":I
    :cond_15
    if-eqz v14, :cond_17

    iget v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 2562
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumePanel;->mUseCocktailFeature:Z

    move/from16 v20, v0

    if-eqz v20, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->isSviewCoverOpened()Z

    move-result v20

    if-nez v20, :cond_17

    .line 2563
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2564
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v20, "package"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    const-string v20, "content"

    const-class v21, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    if-eqz v14, :cond_16

    .line 2568
    const-string v20, "progress"

    iget v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2569
    const-string v20, "max"

    iget-object v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/SeekBar;->getMax()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2570
    const-string v20, "streamtype"

    iget v0, v14, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2571
    const-string v20, "flags"

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2574
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v7

    .line 2575
    .local v7, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    new-instance v20, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/os/Bundle;)V

    const v21, 0x10004

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v10

    .line 2578
    .local v10, "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    new-instance v20, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-class v22, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanelProvider;

    invoke-direct/range {v20 .. v22}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    .line 2580
    .local v6, "cocktailIds":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_17

    .line 2581
    aget v20, v6, v8

    move/from16 v0, v20

    invoke-virtual {v7, v0, v10}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V

    .line 2582
    aget v20, v6, v8

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->showCocktail(I)V

    .line 2580
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 2587
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v6    # "cocktailIds":[I
    .end local v7    # "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .end local v8    # "i":I
    .end local v10    # "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    :cond_17
    const/16 v20, -0xc8

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    and-int/lit8 v20, p2, 0x10

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 2591
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    const-wide/16 v22, 0x12c

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2595
    :cond_18
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_19

    .line 2596
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/VolumePanel;->showSilentHint()V

    .line 2598
    :cond_19
    sget-boolean v20, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v20, :cond_1a

    const-string v20, "VolumePanel"

    const-string v21, "onShowVolumeChanged : call setStreamTypeForLogging"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    :cond_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/VolumePanel;->setStreamTypeForLogging(I)V

    .line 2600
    const-wide/16 v20, 0x3e8

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/volume/VolumePanel;->mValueForHwSwKey:J

    goto/16 :goto_2

    .line 2352
    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "visible"    # I

    .prologue
    const/4 v1, 0x1

    .line 2788
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    :cond_0
    if-ne p2, v1, :cond_2

    .line 2790
    .local v1, "isVisible":Z
    :goto_0
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 2791
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 2792
    .local v2, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 2793
    iput-boolean v1, v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    .line 2794
    if-nez v1, :cond_1

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 2795
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2800
    .end local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 2789
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2790
    .restart local v0    # "i":I
    .restart local v1    # "isVisible":Z
    .restart local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2788
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    .end local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onStopSounds()V
    .locals 5

    .prologue
    .line 2713
    monitor-enter p0

    .line 2714
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 2715
    .local v1, "numStreamTypes":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2716
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 2717
    .local v2, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v2, :cond_1

    .line 2718
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    const-string v4, "VolumePanel onStopSounds"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_0
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2715
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2722
    .end local v2    # "toneGen":Landroid/media/ToneGenerator;
    :cond_2
    monitor-exit p0

    .line 2723
    return-void

    .line 2722
    .end local v0    # "i":I
    .end local v1    # "numStreamTypes":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 4

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2733
    :goto_0
    return-void

    .line 2732
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2224
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVolumeChanged(streamType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v2, :cond_1

    .line 2228
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->initCoverManager(Landroid/content/Context;)V

    .line 2229
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "VolumePanel"

    const-string v3, "onVolumeChanged():initCoverManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    :cond_1
    and-int/lit16 v2, p2, 0x800

    if-eqz v2, :cond_4

    .line 2235
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2236
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "VolumePanel"

    const-string v3, "onVolumeChanged updateStates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    .line 2316
    :cond_3
    :goto_0
    return-void

    .line 2245
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2246
    .local v1, "sc_voice":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_6

    .line 2247
    if-nez p1, :cond_d

    .line 2248
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->phoneIsOffhook()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->isExtraButtonOn()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2249
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_5

    const-string v2, "VolumePanel"

    const-string v3, "Call setMode(ProgressBar.MODE_WARNING)_#1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    :cond_5
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setMode(I)V

    .line 2272
    :cond_6
    :goto_1
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_8

    .line 2273
    monitor-enter p0

    .line 2277
    :try_start_0
    iget v2, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v2, p1, :cond_7

    .line 2279
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2285
    .local v0, "sc_music":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_11

    .line 2286
    const-string v2, "VolumePanel"

    const-string v3, "onVolumeChanged : call reorderSliders"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V

    .line 2293
    .end local v0    # "sc_music":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_7
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 2294
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2301
    :cond_8
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    if-nez v2, :cond_9

    .line 2302
    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2303
    invoke-virtual {p0, v7, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2306
    :cond_9
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_a

    .line 2307
    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2308
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2309
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    .line 2312
    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2313
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2314
    const-string v2, "VolumePanel"

    const-string v3, "onVolumeChanged : call resetTimeout()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    goto/16 :goto_0

    .line 2252
    :cond_b
    if-eqz v1, :cond_6

    .line 2253
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_c

    const-string v2, "VolumePanel"

    const-string v3, "Call setChangeSeekbarColor(false)_#2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    :cond_c
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMode(I)V

    goto :goto_1

    .line 2260
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->phoneIsOffhook()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->isExtraButtonOn()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2262
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_e

    const-string v2, "VolumePanel"

    const-string v3, "Call setMode(ProgressBar.MODE_WARNING)_#3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :cond_e
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setMode(I)V

    goto/16 :goto_1

    .line 2265
    :cond_f
    sget-boolean v2, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_10

    const-string v2, "VolumePanel"

    const-string v3, "Call setMode(ProgressBar.MODE_STANDARD)_#4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    :cond_10
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMode(I)V

    goto/16 :goto_1

    .line 2289
    .restart local v0    # "sc_music":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_11
    :try_start_1
    const-string v2, "VolumePanel"

    const-string v3, "onVolumeChanged : call updateStates #2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    goto/16 :goto_2

    .line 2294
    .end local v0    # "sc_music":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public postDismiss(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 2203
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    .line 2204
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/16 v2, 0xb

    .line 2193
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    .line 2194
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->initCoverManager(Landroid/content/Context;)V

    .line 2195
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "postDisplaySafeVolumeWarning():initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2200
    :goto_0
    return-void

    .line 2199
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 2166
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    :goto_0
    return-void

    .line 2169
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/16 v1, 0xc

    .line 2207
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2208
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2209
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 2188
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postMuteChanged(II)V

    .line 2189
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 2173
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    .line 2174
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 2177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2185
    :goto_0
    return-void

    .line 2178
    :cond_0
    monitor-enter p0

    .line 2179
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2180
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 2182
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2184
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2182
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 2150
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2152
    return-void

    .line 2150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x8

    .line 2139
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2147
    :goto_0
    return-void

    .line 2140
    :cond_0
    monitor-enter p0

    .line 2141
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2142
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 2144
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2146
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 2128
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2136
    :goto_0
    return-void

    .line 2129
    :cond_0
    monitor-enter p0

    .line 2130
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2131
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 2133
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 2135
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2133
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerCoverReceiver()V
    .locals 3

    .prologue
    .line 1020
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1022
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1023
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1024
    const-string v1, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1025
    const-string v1, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1028
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1029
    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/VolumePanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/volume/VolumePanel$Callback;

    .prologue
    .line 2046
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    .line 2047
    return-void
.end method

.method public updateStates()V
    .locals 4

    .prologue
    .line 2086
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2087
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2088
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2089
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 2087
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2117
    .end local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method
