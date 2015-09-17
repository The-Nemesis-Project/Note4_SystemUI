.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
.implements Lcom/android/systemui/statusbar/phone/ActivityStarter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;
    }
.end annotation


# static fields
.field public static final ACTION_STATUSBAR_START:Ljava/lang/String; = "com.android.internal.policy.statusbar.START"

.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field private static final AUTOHIDE_TIMEOUT_MS:J = 0xbb8L

.field public static final CHATTY:Z

.field private static final CLOSE_PANEL_WHEN_EMPTIED:Z = true

.field private static final COCKTAIL_TICKERS_ENABLED:Ljava/lang/String; = "cocktail_bar_tickers_enabled"

.field private static final DB_BRIGHTNESS_ENABLE:Ljava/lang/String; = "notification_panel_brightness_adjustment"

.field public static final DB_DISPLAY_BATTERY_PERCENTAGE:Ljava/lang/String; = "display_battery_percentage"

.field public static final DEBUG:Z

.field public static final DEBUG_GESTURES:Z = false

.field public static final DEBUG_MEDIA:Z = false

.field public static final DEBUG_MEDIA_FAKE_ARTWORK:Z = false

.field public static final DEBUG_WINDOW_STATE:Z = false

.field public static final DUMPTRUCK:Z = true

.field private static final EASY_MODE_ENABLE:Ljava/lang/String; = "easy_mode_switch"

.field public static final FADE_KEYGUARD_DURATION:I = 0x12c

.field public static final FADE_KEYGUARD_START_DELAY:I = 0x64

.field private static final HIDE_ICONS_BELOW_SCORE:I = -0xa

.field private static final HINT_RESET_DELAY_MS:I = 0x4b0

.field private static final KNOX1URI:Ljava/lang/String; = "content://com.sec.knox.provider2/KnoxCustomManagerService1"

.field private static final KNOX2URI:Ljava/lang/String; = "content://com.sec.knox.provider2/KnoxCustomManagerService2"

.field private static final KNOX_MODE_USER_ID:I = 0x64

.field private static final LOCK_TO_APP_GESTURE_TOLERENCE:I = 0xc8

.field private static final LOW_BATTERY_THRESHOLD:I = 0x5

.field private static final MSG_CLOSE_PANELS:I = 0x3e9

.field private static final MSG_HIDE_DETAILVIEW_PANEL:I = 0x3ec

.field private static final MSG_OPEN_NOTIFICATION_PANEL:I = 0x3e8

.field private static final MSG_OPEN_SETTINGS_PANEL:I = 0x3ea

.field private static final MSG_SET_DETAILVIEW_PANEL:I = 0x3ed

.field private static final MSG_SHOW_DETAILVIEW_PANEL:I = 0x3eb

.field private static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final PMS_DB_BRIGHTNESS_ENABLE:Ljava/lang/String; = "pms_notification_panel_brightness_adjustment"

.field private static final Q_CONNECT_ENABLE:Ljava/lang/String; = "com.sec.android.sconnect.service.ENABLED"

.field public static final SHOW_LOCKSCREEN_MEDIA_ARTWORK:Z = true

.field public static final SPEW:Z = false

.field private static final STATUS_OR_NAV_TRANSIENT:I = 0xc000000

.field static final TAG:Ljava/lang/String; = "PhoneStatusBar"

.field private static final TIMEOUT:I = 0xfa0

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PhoneStatusBar"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final VISIBILITY_REPORT_MIN_DELAY_MS:I = 0x1f4

.field private static final VISIBLE_LOCATIONS:I = 0x1d

.field public static mDataTypeBrand:Ljava/lang/String;

.field private static mDiagnosticLogs:Z


# instance fields
.field private final EDM_FALSE:I

.field private final EDM_NULL:I

.field private final EDM_TRUE:I

.field final FLIP_DURATION:I

.field final FLIP_DURATION_IN:I

.field final FLIP_DURATION_OUT:I

.field private lp:Landroid/view/WindowManager$LayoutParams;

.field mAbsPos:[I

.field final mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private final mAnimateCollapsePanels:Ljava/lang/Runnable;

.field public mAppCoverCovered:Z

.field mAttCarrierLabel:Landroid/widget/TextView;

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:Z

.field private mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field private mBackdropBack:Landroid/widget/ImageView;

.field private mBackdropFront:Landroid/widget/ImageView;

.field private mBackdropInterpolator:Landroid/view/animation/Interpolator;

.field mBasicSettingsButton:Landroid/widget/ImageView;

.field mBasicSettingsButtonAnim:Landroid/animation/Animator;

.field private mBasicSettingsButtonListener:Landroid/view/View$OnClickListener;

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:I

.field private mBatteryText:Landroid/widget/TextView;

.field private mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

.field mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

.field private mBrightnessEnablebyBattery:Z

.field private mBrightnessEnablebyDisableFlag:Z

.field private mBrightnessEnablebyLongLifeMode:Z

.field private mBrightnessEnablebySettings:Z

.field private mBrightnessHeight:I

.field mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mCarrierLabelHeight:I

.field private mCarrierLabelLayout:Landroid/view/View;

.field private mCarrierLabelVisible:Z

.field mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field private mClearAll:Landroid/widget/TextView;

.field mClearButtonAnim:Landroid/animation/Animator;

.field private mCocktailTickerEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;

.field mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field mCurrentDisplaySize:Landroid/graphics/Point;

.field private final mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mDemoMode:Z

.field private mDemoModeAllowed:Z

.field private mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field mDisabled:I

.field private mDisabledUnmodified:I

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

.field private mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

.field private mDozing:Z

.field private mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mDrawCount:I

.field private mEasyModeActivated:Z

.field private mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

.field private mEasyModeEnablebySettings:Z

.field mEdgeBorder:I

.field mEditButtonAnim:Landroid/animation/Animator;

.field private mEmergencyModeActivated:Z

.field private mEmergencyeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

.field mExpandSettingsButton:Landroid/widget/ImageView;

.field private mExpandSettingsButtonListener:Landroid/view/View$OnClickListener;

.field mExpandedContents:Landroid/view/View;

.field mExpandedVisible:Z

.field mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field mFlipSettingsView:Landroid/view/View;

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field mHSView:Landroid/widget/HorizontalScrollView;

.field mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mHideBackdropFront:Ljava/lang/Runnable;

.field mHomeActionListener:Landroid/view/View$OnTouchListener;

.field private mHomeCitySettingsDialog:Landroid/app/AlertDialog;

.field mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

.field mIconHPadding:I

.field mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field mIconSize:I

.field private mInteractingWindows:I

.field private mIsInQSDetailviewMode:Z

.field private mIsInQSEditMode:Z

.field public mIsShutingdown:Z

.field private mKeyguardBatteryText:Landroid/widget/TextView;

.field private mKeyguardBouncerContainer:Landroid/view/ViewGroup;

.field mKeyguardCarrierText:Lcom/android/keyguard/CarrierText;

.field private mKeyguardEffectController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

.field private mKeyguardFadingAway:Z

.field private mKeyguardFadingAwayDelay:J

.field private mKeyguardFadingAwayDuration:J

.field mKeyguardMaxNotificationCount:I

.field mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field mKeyguardStatusView:Landroid/view/View;

.field mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mKidsModeActivated:Z

.field private mKidsModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;

.field private mLastLockToAppLongPress:J

.field private mLastVisibilityReportUptimeMs:J

.field private mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

.field private mLaunchTransitionFadingAway:Z

.field mLeaveOpenOnKeyguardHide:Z

.field private mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field mLocale:Ljava/util/Locale;

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

.field private mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

.field private mMDMOverlayContainer:Landroid/widget/FrameLayout;

.field mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

.field private mMdmOverlayView:Landroid/view/View;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaListener:Landroid/media/session/MediaController$Callback;

.field private mMediaListenerRegisted:Z

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMediaNotificationKey:Ljava/lang/String;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field mMoreIcon:Landroid/view/View;

.field private mMultiWindowMode:Z

.field private mNMContext:Landroid/content/Context;

.field private mNMPrefs:Landroid/content/SharedPreferences;

.field mNaturalBarHeight:I

.field private mNavigationBarMode:I

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field mNotificationButton:Landroid/widget/ImageView;

.field mNotificationButtonAnim:Landroid/animation/Animator;

.field private mNotificationButtonListener:Landroid/view/View$OnClickListener;

.field mNotificationIconArea:Landroid/view/View;

.field mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

.field private final mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field mNotificationPanelDebugText:Landroid/widget/TextView;

.field mNotificationPanelGravity:I

.field mNotificationPanelMarginBottomPx:I

.field mNotificationPanelMinHeightFrac:F

.field private final mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field mOperatorLogoIcon:Landroid/view/View;

.field mOrientation:I

.field private final mOverflowClickListener:Landroid/view/View$OnClickListener;

.field mPixelFormat:I

.field private mPmsBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

.field private mPmsBrightnessEnablebySettings:Z

.field mPositionTmp:[I

.field mPostCollapseRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousSealedMode:Z

.field protected mPreviousState:I

.field private mQConnectButtonListener:Landroid/view/View$OnClickListener;

.field private mQConnectHeight:I

.field private mQSDetailviewPanel:Landroid/view/View;

.field private mQSDetailviewType:I

.field private mQSEditBackButton:Landroid/view/View;

.field private mQSEditButton:Landroid/view/View;

.field private mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQSpanelHeight:I

.field private mQconnectEnable:Z

.field private mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field mQsBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mQsBrightnessView:Landroid/view/View;

.field private mQsQConnectView:Landroid/view/View;

.field mQueueLock:Ljava/lang/Object;

.field private mQuickSettingContainer:Landroid/widget/FrameLayout;

.field public mReasonSweep:Z

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

.field private mSFinderButtonListener:Landroid/view/View$OnClickListener;

.field public mSViewCoverCovered:Z

.field private mScreenOn:Ljava/lang/Boolean;

.field private mScreenOnComingFromTouch:Z

.field private mScreenOnFromKeyguard:Z

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrimSrcModeEnabled:Z

.field mScrollViewAnim:Landroid/animation/Animator;

.field mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

.field mSettingButtonHolder:Landroid/view/View;

.field mSettingDivider:Landroid/widget/ImageView;

.field mSettingsButtonAnim:Landroid/animation/Animator;

.field mSettingsEditButton:Landroid/widget/ImageView;

.field private mSettingsEditButtonListener:Landroid/view/View$OnClickListener;

.field private final mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

.field private mShowCarrierInPanel:Z

.field private mShowSearchHoldoff:I

.field private mShowSearchPanel:Ljava/lang/Runnable;

.field mSignalBatteryIcons:Landroid/widget/LinearLayout;

.field private mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarContents:Landroid/widget/LinearLayout;

.field private mStatusBarHeaderHeight:I

.field private mStatusBarMode:I

.field mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mStatusBarWindowState:I

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStatusIconsKeyguard:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field private mSubsLabel:Landroid/widget/TextView;

.field mSystemIconArea:Landroid/widget/LinearLayout;

.field mSystemIcons:Landroid/widget/LinearLayout;

.field mSystemUiVisibility:I

.field private mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

.field private mTickerEnablebyCocktailSettings:Z

.field private mTickerEnabled:Z

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTieckerEnabledByCover:Z

.field mTracking:Z

.field mTrackingPosition:I

.field mTrackingViewAttached:Z

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private mUserSetup:Z

.field private mUserSetupObserver:Landroid/database/ContentObserver;

.field mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVisibilityReporter:Ljava/lang/Runnable;

.field private mVisible:Z

.field mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field mVowifiController:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

.field private mWaitingForKeyguardExit:Z

.field mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private makeInvisible:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 267
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    .line 277
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CHATTY:Z

    .line 311
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 572
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 573
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 7428
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    .line 320
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectEnable:Z

    .line 350
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 351
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 352
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 354
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    .line 358
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 365
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    .line 409
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingViewAttached:Z

    .line 432
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelVisible:Z

    .line 437
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 440
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    .line 443
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 454
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTieckerEnabledByCover:Z

    .line 462
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    .line 466
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 469
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 471
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 474
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousSealedMode:Z

    .line 478
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 482
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 495
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    .line 496
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 516
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 555
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    .line 570
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 571
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropInterpolator:Landroid/view/animation/Interpolator;

    .line 577
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 578
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 584
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListenerRegisted:Z

    .line 585
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    .line 606
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 618
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    .line 619
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    .line 621
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsShutingdown:Z

    .line 625
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 628
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    .line 640
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 662
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 708
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOverflowClickListener:Landroid/view/View$OnClickListener;

    .line 742
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnablebySettings:Z

    .line 743
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnablebySettings:Z

    .line 744
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z

    .line 745
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyDisableFlag:Z

    .line 746
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z

    .line 747
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeActivated:Z

    .line 753
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    .line 767
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSEditMode:Z

    .line 772
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    .line 773
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewType:I

    .line 779
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z

    .line 781
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNMPrefs:Landroid/content/SharedPreferences;

    .line 782
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNMContext:Landroid/content/Context;

    .line 784
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeInvisible:Ljava/lang/Runnable;

    .line 1630
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;

    .line 1631
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeActivated:Z

    .line 1649
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

    .line 1650
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    .line 1926
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    .line 1934
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    .line 1943
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 1944
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    .line 1951
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeActionListener:Landroid/view/View$OnTouchListener;

    .line 2947
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    .line 3476
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 3517
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    .line 3620
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 3621
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 3622
    const/16 v0, 0x7d

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_OUT:I

    .line 3623
    const/16 v0, 0xe1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_IN:I

    .line 3624
    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION:I

    .line 4037
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 4284
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4554
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    .line 4708
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4843
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOrientation:I

    .line 4845
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocale:Ljava/util/Locale;

    .line 5156
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 5166
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 6656
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$49;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 6678
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonListener:Landroid/view/View$OnClickListener;

    .line 6684
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 6705
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButtonListener:Landroid/view/View$OnClickListener;

    .line 6721
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$53;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSFinderButtonListener:Landroid/view/View$OnClickListener;

    .line 6749
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$54;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQConnectButtonListener:Landroid/view/View$OnClickListener;

    .line 6833
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    .line 6977
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMultiWindowMode:Z

    .line 7191
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    .line 7324
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->EDM_NULL:I

    .line 7325
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->EDM_FALSE:I

    .line 7326
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->EDM_TRUE:I

    .line 7367
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mReasonSweep:Z

    return-void
.end method

.method private SetQsDetailviewLayout(Landroid/view/View;)V
    .locals 3
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 7092
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 7093
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    const v2, 0x7f0e01e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 7094
    .local v0, "contentArea":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_1

    .line 7095
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 7096
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7098
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7101
    .end local v0    # "contentArea":Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setHeadsUpVisibility(Z)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideMultiSIMLayout()V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleStartSettingsActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$10402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    return p1
.end method

.method static synthetic access$10500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$10600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return v0
.end method

.method static synthetic access$10802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return p1
.end method

.method static synthetic access$10900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozingState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object v0
.end method

.method static synthetic access$11400()Z
    .locals 1

    .prologue
    .line 263
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDiagnosticLogs:Z

    return v0
.end method

.method static synthetic access$11500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sendLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Ljava/lang/String;

    .prologue
    .line 263
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$11700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeActivated:Z

    return v0
.end method

.method static synthetic access$11702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeActivated:Z

    return p1
.end method

.method static synthetic access$11800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method static synthetic access$11900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeHeadsUpView()V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$12100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    return v0
.end method

.method static synthetic access$12102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    return p1
.end method

.method static synthetic access$12200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$12300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnablebySettings:Z

    return v0
.end method

.method static synthetic access$12302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnablebySettings:Z

    return p1
.end method

.method static synthetic access$12400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$12500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$12600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnablebySettings:Z

    return v0
.end method

.method static synthetic access$12602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnablebySettings:Z

    return p1
.end method

.method static synthetic access$12700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addHeadsUpView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListenerRegisted:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/media/MediaMetadata;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # J

    .prologue
    .line 263
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/SearchPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/SearchPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearAllNotifications()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapseQsEditPanel()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandQsEditPanel()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisableNotificationAlerts:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeActivated:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpTicker:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDrawCount:I

    return v0
.end method

.method static synthetic access$5308(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDrawCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDrawCount:I

    return v0
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleLongPressBackRecents(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->escalateHeadsUp()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->expandQsDetailviewPanel()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->collapseQsDetailviewPanel()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->SetQsDetailviewLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTieckerEnabledByCover:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTieckerEnabledByCover:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z

    return v0
.end method

.method static synthetic access$7302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 263
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPersona(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationTickerText(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    return v0
.end method

.method static synthetic access$8502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyHeadsUpScreenOn(Z)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->stopNotificationLogging()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserExpandedStates()V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startNotificationLoggingIfScreenOnAndVisible()V

    return-void
.end method

.method static synthetic access$9302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectEnable:Z

    return p1
.end method

.method static synthetic access$9400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$9402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$9500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I

    move-result v0

    return v0
.end method

.method private addHeadsUpView()V
    .locals 6

    .prologue
    .line 2078
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c02f5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2080
    .local v2, "headsUpHeight":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7de

    const v4, 0x820328

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2090
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2091
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2092
    const-string v1, "Heads Up"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2093
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2094
    const v1, 0x7f100038

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2096
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-interface {v1, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2097
    return-void
.end method

.method private addNavigationBar()V
    .locals 3

    .prologue
    .line 1996
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNavigationBar: about to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_2

    .line 2015
    :cond_1
    :goto_0
    return-void

    .line 1999
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 2004
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    if-nez v0, :cond_1

    .line 2005
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2008
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private addStatusBarWindow()V
    .locals 3

    .prologue
    .line 4467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 4468
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 4469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->add(Landroid/view/View;I)V

    .line 4472
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eqz v0, :cond_0

    .line 4473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 4476
    :cond_0
    return-void
.end method

.method private adjustDisableFlags(I)I
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 3101
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eqz v0, :cond_1

    .line 3104
    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    .line 3105
    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    .line 3110
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v0, :cond_3

    .line 3111
    :cond_2
    const/high16 p1, 0x10000

    .line 3112
    const-string v0, "PhoneStatusBar"

    const-string v1, "adjustDisableFlags()-Cover"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    :cond_3
    return p1
.end method

.method private animateCollapseQsEditPanel()V
    .locals 0

    .prologue
    .line 7022
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    .line 7043
    return-void
.end method

.method private animateExpandQsEditPanel()V
    .locals 0

    .prologue
    .line 7001
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandSettingsPanel()V

    .line 7019
    return-void
.end method

.method private animateStatusBarHide(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3311
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3312
    if-nez p2, :cond_0

    .line 3313
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3314
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3328
    :goto_0
    return-void

    .line 3317
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private animateStatusBarShow(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3334
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3335
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3336
    if-nez p2, :cond_1

    .line 3337
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3359
    :cond_0
    :goto_0
    return-void

    .line 3340
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 3352
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    if-eqz v0, :cond_0

    .line 3353
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private areLightsOn()Z
    .locals 1

    .prologue
    .line 4095
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private awakenDreams()V
    .locals 1

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 1974
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1979
    :cond_0
    :goto_0
    return-void

    .line 1975
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private barMode(III)I
    .locals 1
    .param p1, "vis"    # I
    .param p2, "transientFlag"    # I
    .param p3, "translucentFlag"    # I

    .prologue
    .line 3999
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int v0, p1, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAutohide()V
    .locals 2

    .prologue
    .line 4071
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 4072
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4073
    return-void
.end method

.method private checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "windowState"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .prologue
    .line 4016
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v1

    .line 4017
    .local v1, "powerSave":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 4020
    .local v0, "anim":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMultiWindowMode:Z

    if-eqz v2, :cond_1

    .line 4021
    const/4 p1, 0x6

    .line 4024
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    if-nez v2, :cond_2

    .line 4025
    const/4 p1, 0x5

    .line 4027
    :cond_2
    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 4028
    return-void

    .line 4017
    .end local v0    # "anim":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkBarModes()V
    .locals 3

    .prologue
    .line 4007
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-eqz v0, :cond_1

    .line 4013
    :cond_0
    :goto_0
    return-void

    .line 4008
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 4009
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 4010
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    goto :goto_0
.end method

.method private checkHomeCitySettingsDialog(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    .line 7194
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->shouldShowPopupForDualClock(Landroid/content/Context;)Z

    move-result v0

    .line 7195
    .local v0, "available":Z
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HomeCitySettingsDialog available = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", show = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7196
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 7197
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseCHNFontType:Z

    if-eqz v3, :cond_1

    .line 7200
    :cond_0
    const/4 v2, 0x5

    .line 7202
    .local v2, "theme":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 7203
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0d0196

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7204
    const v3, 0x7f0d0197

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 7205
    const v3, 0x1040013

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$58;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7216
    const v3, 0x1040009

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$59;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$59;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7224
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    .line 7225
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 7229
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "theme":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7230
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 7237
    :cond_2
    :goto_0
    return-void

    .line 7233
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7234
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeCitySettingsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method private checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 4081
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 4085
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAutohide()V

    .line 4087
    :cond_0
    return-void
.end method

.method private clearAllNotifications()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 1725
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 1726
    .local v3, "numChildren":I
    const/4 v2, 0x0

    .line 1727
    .local v2, "isRemoved":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1728
    .local v4, "viewsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1729
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1731
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1732
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1733
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    const/4 v2, 0x1

    .line 1738
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 1740
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 1741
    const/4 v2, 0x1

    .line 1728
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1747
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    .line 1748
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 1775
    :goto_1
    return-void

    .line 1754
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1756
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-interface {v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->removeAllViews()V

    .line 1759
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setVisibility(I)V

    .line 1773
    :goto_3
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performDismissAllAnimations(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1763
    :cond_4
    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1757
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private collapseQsDetailviewPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7138
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    .line 7139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    .line 7140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7162
    return-void
.end method

.method private computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I
    .locals 3
    .param p1, "oldVis"    # I
    .param p2, "newVis"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;
    .param p4, "transientFlag"    # I
    .param p5, "translucentFlag"    # I

    .prologue
    .line 3983
    invoke-direct {p0, p1, p4, p5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v1

    .line 3984
    .local v1, "oldMode":I
    invoke-direct {p0, p2, p4, p5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v0

    .line 3987
    .local v0, "newMode":I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v2, :cond_1

    .line 3988
    :cond_0
    const/4 v0, 0x4

    .line 3992
    :cond_1
    if-ne v1, v0, :cond_2

    .line 3993
    const/4 v0, -0x1

    .line 3995
    .end local v0    # "newMode":I
    :cond_2
    return v0
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "id"    # I

    .prologue
    .line 5364
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 5369
    :cond_0
    :goto_0
    return-void

    .line 5365
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5366
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/DemoMode;

    if-eqz v1, :cond_0

    .line 5367
    check-cast v0, Lcom/android/systemui/DemoMode;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "var"    # Ljava/lang/String;
    .param p2, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .prologue
    .line 4457
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ".BarTransitions.mMode="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4458
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4459
    return-void
.end method

.method private escalateHeadsUp()V
    .locals 4

    .prologue
    .line 3461
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3462
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v1, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3463
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 3464
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 3465
    .local v0, "notification":Landroid/app/Notification;
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 3466
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3467
    const-string v2, "PhoneStatusBar"

    const-string v3, "converting a heads up to fullScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    :cond_0
    :try_start_0
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3474
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    :goto_0
    return-void

    .line 3470
    .restart local v0    # "notification":Landroid/app/Notification;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private expandQsDetailviewPanel()V
    .locals 2

    .prologue
    .line 7115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    .line 7116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandSettingsPanel()V

    .line 7135
    return-void
.end method

.method private finishBarAnimations()V
    .locals 1

    .prologue
    .line 4031
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 4032
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 4033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 4035
    :cond_0
    return-void
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edmUri"    # Ljava/lang/String;
    .param p3, "projectionArgs"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 7329
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7330
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7331
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 7333
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7334
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 7335
    const/4 v0, 0x1

    .line 7341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7344
    :goto_0
    return v0

    .line 7337
    :cond_0
    const/4 v0, 0x0

    .line 7341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 7339
    :catch_0
    move-exception v0

    .line 7341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7344
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 7341
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edmUri"    # Ljava/lang/String;
    .param p3, "projectionArgs"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 7347
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7348
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7349
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 7351
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7352
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 7353
    const/4 v0, 0x1

    .line 7359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7362
    :goto_0
    return v0

    .line 7355
    :cond_0
    const/4 v0, 0x0

    .line 7359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 7357
    :catch_0
    move-exception v0

    .line 7359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7362
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 7359
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "sUri"    # Ljava/lang/String;
    .param p2, "sSelection"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 7285
    const/4 v7, 0x0

    .line 7286
    .local v7, "result":Z
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7287
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7288
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 7290
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7291
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 7292
    const/4 v7, 0x1

    .line 7295
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v7

    .line 7299
    .end local v7    # "result":Z
    .local v8, "result":I
    :goto_0
    return v8

    .line 7295
    .end local v8    # "result":I
    .restart local v7    # "result":Z
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v7

    .line 7296
    .restart local v8    # "result":I
    goto :goto_0

    .end local v8    # "result":I
    :cond_1
    move v8, v7

    .line 7299
    .restart local v8    # "result":I
    goto :goto_0
.end method

.method private getKnoxValueInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "sUri"    # Ljava/lang/String;
    .param p2, "sSelection"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 7303
    const/4 v7, 0x0

    .line 7304
    .local v7, "result":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 7305
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7306
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 7308
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7309
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 7311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v7

    .line 7315
    .end local v7    # "result":I
    .local v8, "result":I
    :goto_0
    return v8

    .line 7311
    .end local v8    # "result":I
    .restart local v7    # "result":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v7

    .line 7312
    .end local v7    # "result":I
    .restart local v8    # "result":I
    goto :goto_0

    .end local v8    # "result":I
    .restart local v7    # "result":I
    :cond_0
    move v8, v7

    .line 7315
    .end local v7    # "result":I
    .restart local v8    # "result":I
    goto :goto_0
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 2036
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x840068

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2047
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2048
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2051
    :cond_0
    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2052
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2053
    return-object v0
.end method

.method private getNotificationMask(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 7389
    const/4 v1, 0x3

    .line 7391
    .local v1, "maskValue":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNMContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 7393
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNMContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7398
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNMPrefs:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    .line 7399
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNMContext:Landroid/content/Context;

    const-string v3, "notification_manager_settings"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNMPrefs:Landroid/content/SharedPreferences;

    .line 7401
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNMPrefs:Landroid/content/SharedPreferences;

    const/4 v3, 0x3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 7402
    return v1

    .line 7394
    :catch_0
    move-exception v0

    .line 7395
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NM createPackageContext failed, e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStatusBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    .line 2058
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    .line 2059
    .local v2, "mBarHeight":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2069
    .local v0, "mLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2070
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2071
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2072
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2073
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2074
    return-object v0
.end method

.method private handleLongPressBackRecents(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v14, 0x7f0e01cd

    .line 6019
    const/4 v6, 0x0

    .line 6020
    .local v6, "sendBackLongPress":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 6021
    .local v2, "activityManager":Landroid/app/IActivityManager;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    .line 6022
    .local v4, "isAccessiblityEnabled":Z
    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v4, :cond_4

    .line 6023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 6026
    .local v8, "time":J
    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLockToAppLongPress:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0xc8

    cmp-long v7, v10, v12

    if-gez v7, :cond_3

    .line 6027
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 6034
    :cond_0
    :goto_0
    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLockToAppLongPress:J

    .line 6045
    .end local v8    # "time":J
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 6046
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-object v5, v0

    .line 6047
    .local v5, "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    const/4 v7, 0x0

    const/16 v10, 0x80

    invoke-virtual {v5, v7, v10}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 6048
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 6053
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "isAccessiblityEnabled":Z
    .end local v5    # "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    :cond_2
    :goto_2
    return-void

    .line 6028
    .restart local v2    # "activityManager":Landroid/app/IActivityManager;
    .restart local v4    # "isAccessiblityEnabled":Z
    .restart local v8    # "time":J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v14, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 6032
    const/4 v6, 0x1

    goto :goto_0

    .line 6037
    .end local v8    # "time":J
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v14, :cond_5

    .line 6038
    const/4 v6, 0x1

    goto :goto_1

    .line 6039
    :cond_5
    if-eqz v4, :cond_1

    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6042
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6050
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "isAccessiblityEnabled":Z
    :catch_0
    move-exception v3

    .line 6051
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "PhoneStatusBar"

    const-string v10, "Unable to reach activity manager"

    invoke-static {v7, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private handleStartSettingsActivity(Landroid/content/Intent;Z)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z

    .prologue
    .line 5198
    new-instance v1, Landroid/content/Intent;

    const-string v2, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5199
    .local v1, "dismissIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5200
    .local v0, "closeDialogsIntent":Landroid/content/Intent;
    const-string v2, "PhoneStatusBar"

    const-string v3, "Send intent for dismiss clipboard dialog inside phonestatusbar() !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5201
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5202
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5203
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 5204
    return-void
.end method

.method private hunStateToString(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 4451
    if-nez p1, :cond_0

    const-string v0, "null"

    .line 4453
    :goto_0
    return-object v0

    .line 4452
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_1

    const-string v0, "corrupt"

    goto :goto_0

    .line 4453
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private instantCollapseNotificationPanel()V
    .locals 1

    .prologue
    .line 5788
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantCollapse()V

    .line 5795
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 5797
    return-void
.end method

.method private instantExpandNotificationsPanel()V
    .locals 1

    .prologue
    .line 5781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelRevealedByUser:Z

    .line 5782
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    .line 5783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantExpand()V

    .line 5784
    return-void
.end method

.method private isRTL()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7450
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 7451
    .local v0, "value":B
    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 7454
    :cond_1
    return v1
.end method

.method private isShowNotificationIndicator(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 7381
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationMask(Ljava/lang/String;)I

    move-result v0

    .line 7382
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    .line 7383
    const/4 v1, 0x0

    .line 7385
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isShowNotificationPanel(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 7372
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationMask(Ljava/lang/String;)I

    move-result v0

    .line 7373
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 7374
    const/4 v1, 0x0

    .line 7376
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "id"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 4295
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4296
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 4297
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4299
    :cond_0
    return-object v0
.end method

.method private logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5130
    .local p1, "newlyVisible":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "noLongerVisible":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5140
    :goto_0
    return-void

    .line 5133
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 5134
    .local v0, "newlyVisibleAr":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 5136
    .local v1, "noLongerVisibleAr":[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationVisibilityChanged([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5137
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private notifyNavigationBarScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    .line 2033
    :goto_0
    return-void

    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyScreenOn(Z)V

    goto :goto_0
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 4129
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4132
    :goto_0
    return-void

    .line 4130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performDismissAllAnimations(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1778
    .local p1, "hideAnimatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1792
    .local v6, "animationFinishAction":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 1796
    const/16 v10, 0xa

    .line 1797
    .local v10, "rowDelayDecrement":I
    const/16 v7, 0x8c

    .line 1798
    .local v7, "currentDelay":I
    const/4 v3, 0x0

    .line 1799
    .local v3, "totalDelay":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1800
    .local v9, "numItems":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 1801
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1802
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 1803
    .local v2, "endRunnable":Ljava/lang/Runnable;
    add-int/lit8 v0, v9, -0x1

    if-ne v8, v0, :cond_0

    .line 1804
    move-object v2, v6

    .line 1806
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const-wide/16 v4, 0x104

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V

    .line 1807
    const/16 v0, 0x32

    sub-int v4, v7, v10

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1808
    add-int/2addr v3, v7

    .line 1800
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1810
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "endRunnable":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1982
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1984
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1985
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1986
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1987
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1988
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1989
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1991
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateSearchPanel()V

    .line 1992
    return-void
.end method

.method private refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "ll"    # Landroid/widget/LinearLayout;

    .prologue
    .line 2110
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2111
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2112
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2113
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_0

    .line 2114
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 2111
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2117
    :cond_1
    return-void
.end method

.method private removeHeadsUpView()V
    .locals 2

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2101
    return-void
.end method

.method private removeQsDetailviewLayout()V
    .locals 3

    .prologue
    .line 7104
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 7105
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    const v2, 0x7f0e01e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 7106
    .local v0, "contentArea":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 7107
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 7108
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7112
    .end local v0    # "contentArea":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method private removeQsDetailviewPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7165
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    .line 7166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 7167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7169
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7188
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 3

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2028
    :cond_0
    :goto_0
    return-void

    .line 2020
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 2023
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    if-nez v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private resetBatteryPercentageObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6921
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6922
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;->onChange(Z)V

    .line 6923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_battery_percentage"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6926
    return-void
.end method

.method private resetBrightnessEnableObserver()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6908
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;->onChange(Z)V

    .line 6910
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_brightness_adjustment"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6913
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6914
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;->onChange(Z)V

    .line 6915
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pms_notification_panel_brightness_adjustment"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6918
    return-void
.end method

.method private resetEasyModeObserver()V
    .locals 5

    .prologue
    .line 6929
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6930
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;->onChange(Z)V

    .line 6931
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6934
    return-void
.end method

.method private resetUserExpandedStates()V
    .locals 5

    .prologue
    .line 4811
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 4812
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4813
    .local v3, "notificationCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4814
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 4815
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    .line 4816
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetUserExpansion()V

    .line 4813
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4819
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    return-void
.end method

.method private resetUserSetupObserver()V
    .locals 5

    .prologue
    .line 4988
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4989
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4994
    return-void
.end method

.method private resumeSuspendedAutohide()V
    .locals 4

    .prologue
    .line 4058
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    if-eqz v0, :cond_0

    .line 4059
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleAutohide()V

    .line 4060
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4062
    :cond_0
    return-void
.end method

.method private runPostCollapseRunnables()V
    .locals 4

    .prologue
    .line 3571
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3573
    .local v1, "mCurrentPostRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3575
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3576
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3577
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 3576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3579
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3580
    return-void
.end method

.method private sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 1
    .param p1, "a"    # Landroid/media/session/MediaController;
    .param p2, "b"    # Landroid/media/session/MediaController;

    .prologue
    .line 2939
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    .line 2941
    :goto_0
    return v0

    .line 2940
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2941
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result v0

    goto :goto_0
.end method

.method static final saturate(F)F
    .locals 3
    .param p0, "a"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 4479
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .end local p0    # "a":F
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method private scheduleAutohide()V
    .locals 4

    .prologue
    .line 4076
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 4077
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4078
    return-void
.end method

.method private sendLogs(Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 7430
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7431
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7432
    const-string v2, "SETTINGSBUTTON"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7433
    const-string v2, "feature"

    const-string v3, "QP01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7442
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 7443
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7444
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7445
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7446
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7447
    return-void

    .line 7434
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    const-string v2, "EDITBUTTON"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7435
    const-string v2, "feature"

    const-string v3, "QP02"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7436
    :cond_2
    const-string v2, "SFINDERBUTTON"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7437
    const-string v2, "feature"

    const-string v3, "QP03"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7438
    :cond_3
    const-string v2, "QUICKCONNECTBUTTON"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7439
    const-string v2, "feature"

    const-string v3, "QP04"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setBrightnessControllerVisivility()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 6448
    const-string v1, "STATUSBAR-PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mBrightnessEnablebySettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBrightnessEnablebyBattery = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBrightnessEnablebyDisableFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyDisableFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPmsBrightnessEnablebySettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnablebySettings:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6453
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 6454
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyDisableFlag:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnablebySettings:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSEditMode:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    if-nez v1, :cond_6

    .line 6457
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v1, :cond_4

    .line 6458
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v1, :cond_3

    .line 6459
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6461
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateToggleSlider(Z)V

    .line 6513
    :cond_2
    :goto_0
    return-void

    .line 6463
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateToggleSlider(Z)V

    .line 6464
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6465
    .local v0, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 6466
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6467
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6471
    .end local v0    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v1, :cond_5

    .line 6472
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateToggleSlider(Z)V

    .line 6473
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6475
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateToggleSlider(Z)V

    .line 6476
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6494
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateToggleSlider(Z)V

    .line 6495
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setControllerUsers()V
    .locals 2

    .prologue
    .line 4982
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_0

    .line 4983
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setUserId(I)V

    .line 4985
    :cond_0
    return-void
.end method

.method private setHeadsUpVisibility(Z)V
    .locals 5
    .param p1, "vis"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4998
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "showing"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " heads up window"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4999
    :cond_0
    const v3, 0x8ca1

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v2

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5002
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 5003
    return-void

    .line 4998
    :cond_1
    const-string v0, "hiding"

    goto :goto_0

    .line 4999
    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 5002
    :cond_4
    const/16 v2, 0x8

    goto :goto_3
.end method

.method private setNavigationIconHints(I)V
    .locals 1
    .param p1, "hints"    # I

    .prologue
    .line 3832
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    .line 3840
    :goto_0
    return-void

    .line 3834
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 3836
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3837
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 3839
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    goto :goto_0
.end method

.method private setStatusBarOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 4112
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4114
    if-eqz p1, :cond_0

    .line 4115
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 4124
    :goto_0
    return-void

    .line 4118
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showBouncer()V
    .locals 2

    .prologue
    .line 5765
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5766
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 5767
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 5769
    :cond_1
    return-void
.end method

.method private showBouncerDismissIfInsecure()V
    .locals 2

    .prologue
    .line 5772
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5773
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 5774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissIfInsecure()V

    .line 5776
    :cond_1
    return-void
.end method

.method private showHideMultiSIMLayout()V
    .locals 1

    .prologue
    .line 6591
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideMultiSIMLayout(Z)V

    .line 6592
    return-void
.end method

.method private showHideMultiSIMLayout(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 6595
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showHideMultiSIMLayout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6596
    if-nez p1, :cond_0

    .line 6597
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMultiSIMLayout(Z)V

    .line 6653
    :goto_0
    return-void

    .line 6599
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getReadySimCount()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 6600
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showHideMultiSIMLayout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6601
    const/4 v0, 0x0

    .line 6606
    .local v0, "hide":Z
    const-string v1, "STATUSBAR-PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showHideMultiSIMLayout getNumberOfActiveSim : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6615
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v1, :cond_1

    .line 6616
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMultiSIMLayout(Z)V

    goto :goto_0

    .line 6618
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMultiSIMLayout(Z)V

    goto :goto_0

    .line 6650
    .end local v0    # "hide":Z
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMultiSIMLayout(Z)V

    goto :goto_0
.end method

.method private showHideQConnectLayout()V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/4 v6, 0x1

    const/16 v12, 0x8

    const v11, 0x7f0e0206

    const/4 v7, 0x0

    .line 6516
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSFinderQConnectView:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 6517
    :cond_0
    const/4 v1, 0x0

    .line 6518
    .local v1, "hide":Z
    const-string v8, "quickconnect"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/quickconnect/IQuickConnectManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/quickconnect/IQuickConnectManager;

    move-result-object v8

    if-eqz v8, :cond_6

    move v4, v6

    .line 6520
    .local v4, "qconnectServiceEnabled":Z
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    .line 6521
    .local v2, "isKioskEnabled":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 6523
    .local v0, "currentUserId":I
    const-string v8, "STATUSBAR-PhoneStatusBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showHideQConnectLayout userID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " emMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mQconnectEnable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectEnable:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " QconnectService:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6526
    if-nez v2, :cond_2

    if-ge v0, v13, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    if-nez v8, :cond_2

    if-ge v0, v13, :cond_2

    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mShowSFinderQConnectQSB:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSEditMode:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    if-eqz v8, :cond_3

    .line 6529
    :cond_2
    const/4 v1, 0x1

    .line 6532
    :cond_3
    if-nez v1, :cond_b

    .line 6534
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v8, :cond_9

    .line 6535
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v8, :cond_7

    .line 6536
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQconnectSfinder(Z)V

    .line 6537
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 6577
    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    .line 6578
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectEnable:Z

    if-eqz v8, :cond_c

    if-eqz v4, :cond_c

    .line 6579
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 6580
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 6587
    .end local v0    # "currentUserId":I
    .end local v1    # "hide":Z
    .end local v2    # "isKioskEnabled":Z
    .end local v4    # "qconnectServiceEnabled":Z
    :cond_5
    :goto_2
    return-void

    .restart local v1    # "hide":Z
    :cond_6
    move v4, v7

    .line 6518
    goto/16 :goto_0

    .line 6539
    .restart local v0    # "currentUserId":I
    .restart local v2    # "isKioskEnabled":Z
    .restart local v4    # "qconnectServiceEnabled":Z
    :cond_7
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQconnectSfinder(Z)V

    .line 6540
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6541
    .local v3, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    .line 6542
    .local v5, "topMargin":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_8

    .line 6543
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessHeight:I

    add-int/2addr v5, v8

    .line 6545
    :cond_8
    invoke-virtual {v3, v7, v5, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 6546
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6547
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6550
    .end local v3    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "topMargin":I
    :cond_9
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v8, :cond_a

    .line 6551
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQconnectSfinder(Z)V

    .line 6552
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6554
    :cond_a
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQconnectSfinder(Z)V

    .line 6555
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6570
    :cond_b
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQconnectSfinder(Z)V

    .line 6571
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6582
    :cond_c
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 6583
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x3e99999a    # 0.3f

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method private startGlyphRasterizeHack()V
    .locals 2

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1834
    return-void
.end method

.method private startKeyguard()V
    .locals 4

    .prologue
    .line 1845
    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1847
    .local v0, "keyguardViewMediator":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBouncerContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1849
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1850
    return-void
.end method

.method private startNotificationLoggingIfScreenOnAndVisible()V
    .locals 2

    .prologue
    .line 5116
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 5124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;->onChildLocationsChanged(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 5126
    :cond_0
    return-void
.end method

.method private stopNotificationLogging()V
    .locals 2

    .prologue
    .line 5106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 5109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 5111
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 5113
    return-void
.end method

.method private suspendAutohide()V
    .locals 2

    .prologue
    .line 4065
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4066
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4067
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 4068
    return-void

    .line 4067
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClockSize()V
    .locals 3

    .prologue
    .line 5040
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 5045
    :cond_0
    :goto_0
    return-void

    .line 5041
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0e0109

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5042
    .local v0, "clock":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 5043
    const v1, 0x7f0c0294

    invoke-static {v0, v1}, Lcom/android/systemui/Utils;->updateFontSize(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method private updateCoverWindow()V
    .locals 2

    .prologue
    .line 4665
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 4705
    return-void
.end method

.method private updateDozingState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5671
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDozing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5685
    :goto_0
    return-void

    .line 5674
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(Z)V

    .line 5675
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-eqz v0, :cond_1

    .line 5678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDark(ZZ)V

    .line 5684
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozing(Z)V

    goto :goto_0

    .line 5682
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDark(ZZ)V

    goto :goto_1
.end method

.method private updateKeyguardState(ZZ)V
    .locals 8
    .param p1, "goingToFullShade"    # Z
    .param p2, "fromShadeLocked"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5532
    const-string v1, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateKeyguardState :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5533
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    invoke-virtual {v1, v4, v5, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBarState(IZZ)V

    .line 5535
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v3, :cond_c

    .line 5537
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBouncerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5538
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5541
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 5542
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v1, v3, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 5543
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateLockscreenNotificationSetting()V

    .line 5547
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/lso/LockscreenOverlay;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/lso/LockscreenOverlay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/lso/LockscreenOverlay;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5548
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9

    .line 5549
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    if-nez v1, :cond_8

    .line 5550
    new-instance v1, Lcom/sec/widget/lso/LockscreenOverlayView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/sec/widget/lso/LockscreenOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    .line 5552
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 5557
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5594
    :cond_0
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v7, :cond_10

    .line 5596
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v1, :cond_2

    .line 5597
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 5598
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    .line 5601
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v1, :cond_3

    .line 5602
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQsPanelOnKeyguard(Z)V

    .line 5604
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setKeyguardShowing(Z)V

    .line 5605
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    .line 5606
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5607
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 5622
    :goto_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v7, :cond_12

    .line 5623
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setLockShadeShowing(Z)V

    .line 5630
    :goto_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousState:I

    if-ne v1, v3, :cond_13

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v7, :cond_13

    .line 5631
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardPause()V

    .line 5636
    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozingState()V

    .line 5637
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updatePublicMode()V

    .line 5638
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateStackScrollerState(Z)V

    .line 5639
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 5640
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 5641
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 5642
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    .line 5643
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardState(ZZ)V

    .line 5647
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v7, :cond_14

    move v1, v3

    :goto_5
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->disableTouchEvent(Z)V

    .line 5655
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v4, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionEnabled(Z)V

    .line 5660
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5661
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 5662
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->notifyKeyguardState(Z)V

    .line 5666
    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousState:I

    .line 5667
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateKeyguardPreviousState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5668
    return-void

    .line 5554
    :cond_8
    :try_start_1
    const-string v1, "PhoneStatusBar"

    const-string v4, "mMdmOverlayView is not null!!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5555
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 5569
    :catch_0
    move-exception v0

    .line 5572
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 5573
    const-string v1, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lockscren Overlay creation fails: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5559
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_2
    const-string v1, "PhoneStatusBar"

    const-string v4, "mMDMOverlayContainer is null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5561
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 5562
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 5563
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 5564
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    .line 5566
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 5577
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->enableClockAndClear()V

    .line 5579
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBouncerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5580
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5583
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-nez p1, :cond_d

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v7, :cond_d

    if-eqz p2, :cond_f

    :cond_d
    move v1, v3

    :goto_6
    invoke-virtual {v4, v2, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 5586
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 5587
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 5588
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 5589
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMdmOverlayView:Landroid/view/View;

    .line 5591
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_f
    move v1, v2

    .line 5583
    goto :goto_6

    .line 5610
    :cond_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v1, :cond_11

    .line 5611
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    .line 5612
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 5614
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setKeyguardShowing(Z)V

    .line 5615
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    .line 5616
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02029b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5617
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setElevation(F)V

    goto/16 :goto_2

    .line 5625
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setLockShadeShowing(Z)V

    goto/16 :goto_3

    .line 5632
    :cond_13
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousState:I

    if-ne v1, v7, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v3, :cond_4

    .line 5633
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardResume()V

    goto/16 :goto_4

    :cond_14
    move v1, v2

    .line 5647
    goto/16 :goto_5
.end method

.method private updateMultiSIMLayout(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2595
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v2, v0, :cond_0

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateMultiSIMLayout(Z)V

    .line 2597
    return-void

    .line 2595
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateNotificationIcons()V
    .locals 17

    .prologue
    .line 2649
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    invoke-direct {v9, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2652
    .local v9, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    .line 2653
    .local v2, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2654
    .local v1, "N":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2657
    .local v12, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v1, :cond_3

    .line 2658
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2664
    .local v6, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v14, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget v14, v14, Landroid/app/Notification;->commonValue:I

    const v15, 0x10101010

    if-ne v14, v15, :cond_1

    .line 2657
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2668
    :cond_1
    iget-object v14, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v14

    const/16 v15, -0xa

    if-ge v14, v15, :cond_2

    iget-object v14, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v14}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2672
    :cond_2
    iget-object v14, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2675
    .end local v6    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    sget-boolean v14, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v14, :cond_4

    .line 2676
    const-string v14, "PhoneStatusBar"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshing icons: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " notifications, mNotificationIcons="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2681
    .local v10, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v14

    if-ge v8, v14, :cond_6

    .line 2682
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14, v8}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2683
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 2684
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2688
    .end local v4    # "child":Landroid/view/View;
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2689
    .local v11, "toRemoveCount":I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v11, :cond_7

    .line 2690
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v15, v14}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    .line 2689
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2693
    :cond_7
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_9

    .line 2694
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 2695
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-nez v14, :cond_8

    .line 2696
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14, v13, v8, v9}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2693
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2701
    .end local v13    # "v":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v5

    .line 2702
    .local v5, "childCount":I
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v5, :cond_b

    .line 2703
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14, v8}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2704
    .local v3, "actual":Landroid/view/View;
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2705
    .local v7, "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-ne v3, v7, :cond_a

    .line 2702
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2708
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14, v7}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    .line 2709
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v14, v7, v8}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;I)V

    goto :goto_6

    .line 2711
    .end local v3    # "actual":Landroid/view/View;
    .end local v7    # "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_b
    return-void
.end method

.method private updateNotificationShade()V
    .locals 31

    .prologue
    .line 2370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    .line 2569
    :cond_0
    :goto_0
    return-void

    .line 2373
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCollapsing()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 2374
    new-instance v29, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2382
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSEditMode:Z

    move/from16 v29, v0

    if-nez v29, :cond_0

    .line 2383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    .line 2385
    .local v3, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2386
    .local v18, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2387
    .local v20, "toShowMiniCon":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2388
    .local v21, "toShowMiniConCMAS":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2389
    .local v22, "toShowMiniConContextAware":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 2390
    .local v23, "toShowMiniConKnoxMode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2391
    .local v24, "toShowMiniConToolbox":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2392
    .local v25, "toShowNotification":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 2394
    .local v26, "toShowOnGoing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2395
    .local v19, "toShowEventNotification":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 2397
    .local v6, "hasCMASNotification":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2398
    .local v2, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_18

    .line 2399
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2406
    .local v5, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/app/Notification;->commonValue:I

    move/from16 v29, v0

    const v30, -0x7f7f7f80

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 2407
    const-string v29, "PhoneStatusBar"

    const-string v30, "Icon Only"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2412
    :cond_3
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/app/Notification;->visibility:I

    move/from16 v28, v0

    .line 2415
    .local v28, "vis":I
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v29

    if-nez v29, :cond_7

    const/4 v7, 0x1

    .line 2417
    .local v7, "hideSensitive":Z
    :goto_3
    if-nez v28, :cond_8

    const/4 v14, 0x1

    .line 2418
    .local v14, "sensitiveNote":Z
    :goto_4
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v15

    .line 2419
    .local v15, "sensitivePackage":Z
    if-eqz v14, :cond_4

    if-nez v7, :cond_5

    :cond_4
    if-eqz v15, :cond_9

    :cond_5
    const/4 v13, 0x1

    .line 2420
    .local v13, "sensitive":Z
    :goto_5
    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v29

    if-eqz v29, :cond_a

    const/16 v16, 0x1

    .line 2424
    .local v16, "showingPublic":Z
    :goto_6
    iget v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x8

    if-eqz v29, :cond_b

    const/4 v12, 0x1

    .line 2425
    .local v12, "sanitize":Z
    :goto_7
    if-eqz v12, :cond_c

    .line 2426
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 2427
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->enableKnoxView(Z)V

    .line 2432
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 2433
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaNotificationsForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 2439
    :goto_9
    iget-boolean v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    move/from16 v29, v0

    if-eqz v29, :cond_6

    iget-boolean v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    move/from16 v29, v0

    if-eqz v29, :cond_6

    .line 2442
    if-eqz v16, :cond_e

    .line 2443
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 2449
    :cond_6
    :goto_a
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->isMiniCon()Z

    move-result v29

    if-eqz v29, :cond_15

    .line 2450
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v29, v0

    const/16 v30, 0x10

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 2451
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2415
    .end local v7    # "hideSensitive":Z
    .end local v12    # "sanitize":Z
    .end local v13    # "sensitive":Z
    .end local v14    # "sensitiveNote":Z
    .end local v15    # "sensitivePackage":Z
    .end local v16    # "showingPublic":Z
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 2417
    .restart local v7    # "hideSensitive":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 2419
    .restart local v14    # "sensitiveNote":Z
    .restart local v15    # "sensitivePackage":Z
    :cond_9
    const/4 v13, 0x0

    goto :goto_5

    .line 2420
    .restart local v13    # "sensitive":Z
    :cond_a
    const/16 v16, 0x0

    goto :goto_6

    .line 2424
    .restart local v16    # "showingPublic":Z
    :cond_b
    const/4 v12, 0x0

    goto :goto_7

    .line 2429
    .restart local v12    # "sanitize":Z
    :cond_c
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 2430
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->enableKnoxView(Z)V

    goto :goto_8

    .line 2435
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateLegacyBackgroundForKnox(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_9

    .line 2445
    :cond_e
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    goto :goto_a

    .line 2452
    :cond_f
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v29, v0

    const/16 v30, 0x80

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    .line 2453
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2454
    :cond_10
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v29, v0

    const/16 v30, 0x104

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 2455
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2456
    :cond_11
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    move/from16 v29, v0

    const/16 v30, 0x200

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 2457
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v29

    if-eqz v29, :cond_13

    .line 2458
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/app/Notification;->commonValue:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 2459
    const/4 v6, 0x1

    .line 2464
    :goto_b
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2461
    :cond_12
    const/4 v6, 0x0

    goto :goto_b

    .line 2463
    :cond_13
    const/4 v6, 0x1

    goto :goto_b

    .line 2466
    :cond_14
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2469
    :cond_15
    sget-boolean v29, Lcom/android/systemui/statusbar/Feature;->mUseEventNotification:Z

    if-eqz v29, :cond_16

    .line 2470
    const-string v29, "com.sec.android.app.eventnotification"

    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 2471
    const-string v29, "PhoneStatusBar"

    const-string v30, "updateNotificationShade add toShowEventNotification"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2476
    :cond_16
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v29

    if-eqz v29, :cond_17

    .line 2477
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2479
    :cond_17
    iget-object v0, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2483
    .end local v5    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v7    # "hideSensitive":Z
    .end local v12    # "sanitize":Z
    .end local v13    # "sensitive":Z
    .end local v14    # "sensitiveNote":Z
    .end local v15    # "sensitivePackage":Z
    .end local v16    # "showingPublic":Z
    .end local v28    # "vis":I
    :cond_18
    const/4 v8, 0x0

    :goto_c
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_19

    .line 2484
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2483
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 2486
    :cond_19
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v8, v29, -0x1

    :goto_d
    if-ltz v8, :cond_1a

    .line 2487
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2486
    add-int/lit8 v8, v8, -0x1

    goto :goto_d

    .line 2489
    :cond_1a
    const/4 v8, 0x0

    :goto_e
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_1b

    .line 2490
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2489
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 2492
    :cond_1b
    const/4 v8, 0x0

    :goto_f
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_1c

    .line 2493
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2492
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 2495
    :cond_1c
    const/4 v8, 0x0

    :goto_10
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_1d

    .line 2496
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2495
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 2498
    :cond_1d
    sget-boolean v29, Lcom/android/systemui/statusbar/Feature;->mUseEventNotification:Z

    if-eqz v29, :cond_1e

    .line 2499
    const/4 v8, 0x0

    :goto_11
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_1e

    .line 2500
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2499
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 2503
    :cond_1e
    const/4 v8, 0x0

    :goto_12
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_1f

    .line 2504
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2503
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 2506
    :cond_1f
    const/4 v8, 0x0

    :goto_13
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_20

    .line 2507
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2506
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 2510
    :cond_20
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2511
    .local v17, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_22

    .line 2512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2513
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    instance-of v0, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v29, v0

    if-eqz v29, :cond_21

    .line 2514
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2511
    :cond_21
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 2518
    .end local v4    # "child":Landroid/view/View;
    :cond_22
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_23

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 2519
    .local v11, "remove":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    goto :goto_15

    .line 2521
    .end local v11    # "remove":Landroid/view/View;
    :cond_23
    const/4 v8, 0x0

    :goto_16
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_25

    .line 2522
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    .line 2523
    .local v27, "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    if-nez v29, :cond_24

    .line 2524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2521
    :cond_24
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 2531
    .end local v27    # "v":Landroid/view/View;
    :cond_25
    const/4 v10, 0x0

    .line 2532
    .local v10, "j":I
    const/4 v8, 0x0

    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_28

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2534
    .restart local v4    # "child":Landroid/view/View;
    instance-of v0, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v29, v0

    if-nez v29, :cond_26

    .line 2532
    :goto_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 2539
    :cond_26
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    if-ne v4, v0, :cond_27

    .line 2541
    add-int/lit8 v10, v10, 0x1

    .line 2542
    goto :goto_18

    .line 2547
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/view/View;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2548
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .line 2551
    .end local v4    # "child":Landroid/view/View;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/statusbar/NotificationData;->hasActiveClearableNotifications()Z

    move-result v29

    if-eqz v29, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    move/from16 v29, v0

    if-eqz v29, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2b

    :cond_29
    const/16 v29, 0x1

    :goto_19
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClearAll(Z)V

    .line 2553
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 2562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v29

    if-eqz v29, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v29

    if-eqz v29, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2c

    :cond_2a
    const/16 v29, 0x1

    :goto_1a
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionEnabled(Z)V

    .line 2564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->check()V

    .line 2565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    .line 2566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateCMASText(Z)V

    goto/16 :goto_0

    .line 2551
    :cond_2b
    const/16 v29, 0x0

    goto :goto_19

    .line 2562
    :cond_2c
    const/16 v29, 0x0

    goto :goto_1a
.end method

.method private updatePublicMode()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLockscreenPublicMode(Z)V

    .line 5526
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLockscreenKnoxMode(Z)V

    .line 5529
    return-void

    :cond_0
    move v0, v2

    .line 5517
    goto :goto_0

    :cond_1
    move v1, v2

    .line 5526
    goto :goto_1
.end method

.method private updateQSpanel(Z)V
    .locals 4
    .param p1, "singleline"    # Z

    .prologue
    .line 6362
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v1, :cond_0

    .line 6363
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSPanel;->setSingleLine(Z)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    .line 6364
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    .line 6365
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    .line 6366
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    .line 6368
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 6369
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideMultiSIMLayout()V

    .line 6374
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V

    .line 6375
    if-eqz p1, :cond_3

    .line 6376
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6377
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    .line 6385
    :cond_2
    return-void

    .line 6379
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 6381
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateQSpanelHeight()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 6436
    const/4 v0, 0x0

    .line 6437
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    :goto_0
    add-int/2addr v0, v1

    .line 6438
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    if-nez v1, :cond_2

    .line 6439
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessHeight:I

    add-int/2addr v0, v1

    .line 6440
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQConnectHeight:I

    add-int/2addr v0, v1

    .line 6442
    :cond_2
    const-string v1, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQSpanelHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6443
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPeekHeight(I)V

    .line 6444
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZI)V

    .line 6445
    return-void

    :cond_5
    move v1, v2

    .line 6437
    goto :goto_0
.end method

.method private updateQconnectSfinder(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2589
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateQconnectSfinderView(Z)V

    .line 2591
    return-void

    .line 2589
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateShowSearchHoldoff()V
    .locals 2

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 2367
    return-void
.end method

.method private updateSpeedbump()V
    .locals 8

    .prologue
    .line 2601
    const/4 v5, -0x1

    .line 2602
    .local v5, "speedbumpIndex":I
    const/4 v2, 0x0

    .line 2603
    .local v2, "currentIndex":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 2604
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2605
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 2606
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2607
    .local v3, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v7, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2609
    move v5, v2

    .line 2614
    .end local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex(I)V

    .line 2615
    return-void

    .line 2612
    .restart local v3    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2605
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private updateToggleSlider(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2584
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateToggleSliderView(Z)V

    .line 2586
    return-void

    .line 2584
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private userAutohide()V
    .locals 4

    .prologue
    .line 4090
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 4091
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4092
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 4303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v5, 0x0

    .line 2120
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addIcon slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " viewIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2123
    .local v1, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2124
    const/4 v0, 0x0

    .line 2125
    .local v0, "iconWidth":I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v2, :cond_0

    .line 2126
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 2130
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, p3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2132
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v1    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2133
    .restart local v1    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2134
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, p3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2136
    return-void

    .line 2128
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v7, 0x1

    .line 2160
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addNotification key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2162
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "PhoneStatusBar"

    const-string v5, "launching notification in heads up mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 2164
    .local v1, "interruptionCandidate":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    .line 2165
    .local v0, "holder":Landroid/view/ViewGroup;
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2167
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    .line 2228
    .end local v0    # "holder":Landroid/view/ViewGroup;
    .end local v1    # "interruptionCandidate":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    :goto_0
    return-void

    .line 2174
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 2175
    .local v2, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v2, :cond_2

    .line 2179
    const/4 v3, 0x1

    .line 2180
    .local v3, "tickTriggered":Z
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_7

    .line 2183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    .line 2186
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "PhoneStatusBar"

    const-string v5, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2208
    :cond_5
    :goto_1
    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2211
    if-nez v3, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    if-nez v4, :cond_6

    .line 2212
    invoke-virtual {p0, p1, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    .line 2217
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 2218
    const/16 v4, -0x2710

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2222
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v4, :cond_2

    .line 2223
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2224
    const/4 v4, 0x0

    const v5, 0x10a0074

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    goto :goto_0

    .line 2195
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    if-nez v4, :cond_5

    .line 2199
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isPersona(I)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCurrentUserId()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 2201
    const/4 v3, 0x0

    goto :goto_1

    .line 2204
    :cond_8
    invoke-virtual {p0, p1, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    goto :goto_1

    .line 2189
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 5414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5415
    return-void
.end method

.method public animateCollapsePanels()V
    .locals 1

    .prologue
    .line 3514
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3515
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 3529
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 3530
    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 7
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    const/16 v6, 0x403

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x3fc

    .line 3533
    if-nez p2, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3535
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 3567
    :cond_1
    :goto_0
    return-void

    .line 3539
    :cond_2
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateCollapse(): mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_3

    .line 3545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3546
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3551
    :cond_3
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_4

    .line 3552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3553
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3556
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_1

    .line 3558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 3560
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    .line 3561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    goto :goto_0

    .line 3564
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    goto :goto_0
.end method

.method public animateCollapseQuickSettings()V
    .locals 2

    .prologue
    .line 3681
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v0, :cond_0

    .line 3682
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3684
    :cond_0
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 1

    .prologue
    .line 3632
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eqz v0, :cond_1

    .line 3649
    :cond_0
    :goto_0
    return-void

    .line 3637
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    .line 3644
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToNotifications()V

    goto :goto_0
.end method

.method public animateExpandSettingsPanel()V
    .locals 2

    .prologue
    .line 3655
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3656
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 3659
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3678
    :cond_1
    :goto_0
    return-void

    .line 3664
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    if-eqz v0, :cond_1

    .line 3668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    .line 3669
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    goto :goto_0
.end method

.method public applyEDMPolicy()V
    .locals 6

    .prologue
    .line 5324
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isStatusBarHidden()Z

    move-result v2

    .line 5325
    .local v2, "isStatusBarHidden":Z
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eq v3, v2, :cond_1

    .line 5326
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    .line 5328
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-eqz v3, :cond_3

    .line 5329
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5330
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 5331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 5333
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeInvisible:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5334
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 5336
    const-string v3, "PhoneStatusBar"

    const-string v4, "Removed status bar view"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5348
    .end local v2    # "isStatusBarHidden":Z
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isNavigationBarHidden()Z

    move-result v1

    .line 5349
    .local v1, "isNavigationBarHidden":Z
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    if-eq v3, v1, :cond_2

    .line 5350
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    .line 5352
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsNavigationBarHidden:Z

    if-eqz v3, :cond_4

    .line 5353
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5361
    .end local v1    # "isNavigationBarHidden":Z
    :cond_2
    :goto_1
    return-void

    .line 5338
    .restart local v2    # "isStatusBarHidden":Z
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 5340
    const-string v3, "PhoneStatusBar"

    const-string v4, "Added status bar view"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 5343
    .end local v2    # "isStatusBarHidden":Z
    :catch_0
    move-exception v0

    .line 5344
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed Applying policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5355
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isNavigationBarHidden":Z
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 5358
    .end local v1    # "isNavigationBarHidden":Z
    :catch_1
    move-exception v0

    .line 5359
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed Applying policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public buzzBeepBlinked()V
    .locals 1

    .prologue
    .line 3864
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3865
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireBuzzBeepBlinked()V

    .line 3867
    :cond_0
    return-void
.end method

.method public calculateGoingToFullShadeDelay()J
    .locals 4

    .prologue
    .line 5488
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public createAndAddWindows()V
    .locals 0

    .prologue
    .line 4463
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addStatusBarWindow()V

    .line 4464
    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 2

    .prologue
    .line 3363
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5242
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->destroy()V

    .line 5243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_0

    .line 5244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 5245
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 5247
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 5248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 5249
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 5251
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5252
    return-void
.end method

.method public disable(IZ)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 3123
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    .line 3124
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->adjustDisableFlags(I)I

    move-result p1

    .line 3125
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 3127
    .local v2, "old":I
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3128
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KnoxCustom: state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedStatusBarMode"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_f

    .line 3131
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: DISABLE_VISIBILITY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v4, :cond_0

    .line 3133
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: calling setStatusBarOn(false)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarOn(Z)V

    .line 3159
    :cond_0
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousSealedMode:Z

    .line 3180
    :cond_1
    :goto_1
    xor-int v0, p1, v2

    .line 3181
    .local v0, "diff":I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 3183
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 3184
    const-string v4, "PhoneStatusBar"

    const-string v5, "disable: 0x%08x -> 0x%08x (diff: 0x%08x)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3189
    .local v1, "flagdbg":Ljava/lang/StringBuilder;
    const-string v4, "disable: < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3190
    const/high16 v4, 0x10000

    and-int/2addr v4, p1

    if-eqz v4, :cond_14

    const-string v4, "EXPAND"

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3191
    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_15

    const-string v4, "* "

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3192
    const/high16 v4, 0x20000

    and-int/2addr v4, p1

    if-eqz v4, :cond_16

    const-string v4, "ICONS"

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3193
    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-eqz v4, :cond_17

    const-string v4, "* "

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3194
    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_18

    const-string v4, "ALERTS"

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3195
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_19

    const-string v4, "* "

    :goto_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3196
    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1a

    const-string v4, "SYSTEM_INFO"

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3197
    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1b

    const-string v4, "* "

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3198
    const/high16 v4, 0x400000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1c

    const-string v4, "BACK"

    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3199
    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1d

    const-string v4, "* "

    :goto_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3200
    const/high16 v4, 0x200000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1e

    const-string v4, "HOME"

    :goto_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3201
    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1f

    const-string v4, "* "

    :goto_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3202
    const/high16 v4, 0x1000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_20

    const-string v4, "RECENT"

    :goto_e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3203
    const/high16 v4, 0x1000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_21

    const-string v4, "* "

    :goto_f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3204
    const/high16 v4, 0x800000

    and-int/2addr v4, p1

    if-eqz v4, :cond_22

    const-string v4, "CLOCK"

    :goto_10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3205
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_23

    const-string v4, "* "

    :goto_11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3206
    const/high16 v4, 0x2000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_24

    const-string v4, "SEARCH"

    :goto_12
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3207
    const/high16 v4, 0x2000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_25

    const-string v4, "* "

    :goto_13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3208
    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3209
    const-string v4, "PhoneStatusBar"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-nez v4, :cond_3

    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3216
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3218
    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-nez v4, :cond_26

    const/4 v3, 0x1

    .line 3219
    .local v3, "show":Z
    :goto_14
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_27

    const/4 v4, 0x0

    :goto_15
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3220
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSignalBatteryIcons:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_28

    const/4 v4, 0x0

    :goto_16
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3224
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3226
    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-eqz v4, :cond_29

    .line 3230
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateStatusBarHide(Landroid/view/View;Z)V

    .line 3242
    .end local v3    # "show":Z
    :cond_4
    :goto_17
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-nez v4, :cond_5

    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3247
    :cond_5
    const/high16 v4, 0x800000

    and-int/2addr v4, p1

    if-nez v4, :cond_2a

    const/4 v3, 0x1

    .line 3248
    .restart local v3    # "show":Z
    :goto_18
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    .line 3250
    .end local v3    # "show":Z
    :cond_6
    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_7

    .line 3251
    const/high16 v4, 0x10000

    and-int/2addr v4, p1

    if-eqz v4, :cond_7

    .line 3252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 3256
    :cond_7
    const/high16 v4, 0x3600000

    and-int/2addr v4, v0

    if-eqz v4, :cond_9

    .line 3261
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 3263
    :cond_8
    const/high16 v4, 0x1000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_9

    .line 3265
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v5, 0x3fc

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3266
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v5, 0x3fc

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3270
    :cond_9
    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-nez v4, :cond_a

    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3276
    :cond_a
    const/high16 v4, 0x20000

    and-int/2addr v4, p1

    if-eqz v4, :cond_2b

    .line 3277
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_b

    .line 3278
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 3283
    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateStatusBarHide(Landroid/view/View;Z)V

    .line 3294
    :cond_c
    :goto_19
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_d

    .line 3295
    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    :goto_1a
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisableNotificationAlerts:Z

    .line 3297
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3300
    :cond_d
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/DoNotDisturb;->isDisableAlert()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3301
    const/high16 v4, 0x40000

    or-int/2addr p1, v4

    .line 3302
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disable : updateDisableFlags : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    const/high16 v5, 0x40000

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDisableFlags(I)V

    .line 3305
    :cond_e
    return-void

    .line 3137
    .end local v0    # "diff":I
    .end local v1    # "flagdbg":Ljava/lang/StringBuilder;
    :cond_f
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: SEALED_MODE_VISIBILITY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStatusBarView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clock = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v7, "getSealedStatusBarClockState"

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "icons = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v7, "getSealedStatusBarIconsState"

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v4, :cond_0

    .line 3142
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: calling setStatusBarOn(true)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarOn(Z)V

    .line 3145
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedStatusBarClockState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 3146
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: setting StatusBarManager.DISABLE_CLOCK"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    const/high16 v4, 0x800000

    or-int/2addr p1, v4

    .line 3149
    :cond_10
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v5, "getSealedStatusBarIconsState"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 3150
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: setting StatusBarManager.DISABLE_SYSTEM_INFO"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    const/high16 v4, 0x100000

    or-int/2addr p1, v4

    .line 3153
    :cond_11
    const/high16 v4, 0x10000

    or-int/2addr p1, v4

    .line 3154
    const/high16 v4, 0x20000

    or-int/2addr p1, v4

    .line 3155
    const/high16 v4, 0x1000000

    or-int/2addr p1, v4

    goto/16 :goto_0

    .line 3161
    :cond_12
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousSealedMode:Z

    if-eqz v4, :cond_1

    .line 3162
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: ENABLE_VISIBILITY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    const-string v4, "PhoneStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStatusBarView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v4, :cond_13

    .line 3165
    const-string v4, "PhoneStatusBar"

    const-string v5, "KnoxCustom: calling setStatusBarOn(true)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarOn(Z)V

    .line 3167
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit8 v4, v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    .line 3168
    const v4, -0x800001

    and-int/2addr p1, v4

    .line 3169
    const v4, -0x100001

    and-int/2addr p1, v4

    .line 3170
    const v4, -0x10001

    and-int/2addr p1, v4

    .line 3171
    const v4, -0x20001

    and-int/2addr p1, v4

    .line 3172
    const v4, -0x200001

    and-int/2addr p1, v4

    .line 3173
    const v4, -0x1000001

    and-int/2addr p1, v4

    .line 3174
    const v4, -0x400001

    and-int/2addr p1, v4

    .line 3176
    :cond_13
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPreviousSealedMode:Z

    goto/16 :goto_1

    .line 3190
    .restart local v0    # "diff":I
    .restart local v1    # "flagdbg":Ljava/lang/StringBuilder;
    :cond_14
    const-string v4, "expand"

    goto/16 :goto_2

    .line 3191
    :cond_15
    const-string v4, " "

    goto/16 :goto_3

    .line 3192
    :cond_16
    const-string v4, "icons"

    goto/16 :goto_4

    .line 3193
    :cond_17
    const-string v4, " "

    goto/16 :goto_5

    .line 3194
    :cond_18
    const-string v4, "alerts"

    goto/16 :goto_6

    .line 3195
    :cond_19
    const-string v4, " "

    goto/16 :goto_7

    .line 3196
    :cond_1a
    const-string v4, "system_info"

    goto/16 :goto_8

    .line 3197
    :cond_1b
    const-string v4, " "

    goto/16 :goto_9

    .line 3198
    :cond_1c
    const-string v4, "back"

    goto/16 :goto_a

    .line 3199
    :cond_1d
    const-string v4, " "

    goto/16 :goto_b

    .line 3200
    :cond_1e
    const-string v4, "home"

    goto/16 :goto_c

    .line 3201
    :cond_1f
    const-string v4, " "

    goto/16 :goto_d

    .line 3202
    :cond_20
    const-string v4, "recent"

    goto/16 :goto_e

    .line 3203
    :cond_21
    const-string v4, " "

    goto/16 :goto_f

    .line 3204
    :cond_22
    const-string v4, "clock"

    goto/16 :goto_10

    .line 3205
    :cond_23
    const-string v4, " "

    goto/16 :goto_11

    .line 3206
    :cond_24
    const-string v4, "search"

    goto/16 :goto_12

    .line 3207
    :cond_25
    const-string v4, " "

    goto/16 :goto_13

    .line 3218
    :cond_26
    const/4 v3, 0x0

    goto/16 :goto_14

    .line 3219
    .restart local v3    # "show":Z
    :cond_27
    const/4 v4, 0x4

    goto/16 :goto_15

    .line 3220
    :cond_28
    const/4 v4, 0x4

    goto/16 :goto_16

    .line 3236
    :cond_29
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateStatusBarShow(Landroid/view/View;Z)V

    goto/16 :goto_17

    .line 3247
    .end local v3    # "show":Z
    :cond_2a
    const/4 v3, 0x0

    goto/16 :goto_18

    .line 3289
    :cond_2b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateStatusBarShow(Landroid/view/View;Z)V

    goto/16 :goto_19

    .line 3295
    :cond_2c
    const/4 v4, 0x0

    goto/16 :goto_1a
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V
    .locals 2
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z
    .param p3, "dismissIfInsecure"    # Z

    .prologue
    .line 4824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4825
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 4827
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 4828
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    .line 4840
    :goto_0
    return-void

    .line 4835
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    goto :goto_0

    .line 4838
    :cond_1
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    goto :goto_0
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 5260
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_0

    .line 5261
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sysui_demo_allowed"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    .line 5264
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_3

    .line 5317
    :cond_1
    :goto_1
    return-void

    .line 5261
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 5265
    :cond_3
    const-string v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 5266
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 5274
    :cond_4
    :goto_2
    const-string v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_5
    const/4 v3, 0x1

    .line 5275
    .local v3, "modeChange":Z
    :goto_3
    if-nez v3, :cond_6

    const-string v7, "clock"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5276
    :cond_6
    const v7, 0x7f0e0109

    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 5278
    :cond_7
    if-nez v3, :cond_8

    const-string v7, "battery"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 5279
    :cond_8
    const v7, 0x7f0e01c1

    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 5281
    :cond_9
    if-nez v3, :cond_a

    const-string v7, "status"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 5282
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v7, :cond_b

    .line 5283
    new-instance v7, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 5285
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v7, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5287
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v7, :cond_e

    if-nez v3, :cond_d

    const-string v7, "network"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 5288
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v7, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5290
    :cond_e
    if-nez v3, :cond_f

    const-string v7, "notifications"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 5291
    :cond_f
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v7, :cond_15

    const/4 v4, 0x0

    .line 5293
    .local v4, "notifications":Landroid/view/View;
    :goto_4
    if-eqz v4, :cond_10

    .line 5294
    const-string v7, "visible"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5295
    .local v6, "visible":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-eqz v7, :cond_16

    const-string v7, "false"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v5, 0x4

    .line 5296
    .local v5, "vis":I
    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5299
    .end local v4    # "notifications":Landroid/view/View;
    .end local v5    # "vis":I
    .end local v6    # "visible":Ljava/lang/String;
    :cond_10
    const-string v7, "bars"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5300
    const-string v7, "mode"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5301
    .local v2, "mode":Ljava/lang/String;
    const-string v7, "opaque"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v1, 0x0

    .line 5307
    .local v1, "barMode":I
    :goto_6
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 5308
    const/4 v0, 0x1

    .line 5309
    .local v0, "animate":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v7, :cond_11

    .line 5310
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 5312
    :cond_11
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v7, :cond_1

    .line 5313
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    goto/16 :goto_1

    .line 5267
    .end local v0    # "animate":Z
    .end local v1    # "barMode":I
    .end local v2    # "mode":Ljava/lang/String;
    .end local v3    # "modeChange":Z
    :cond_12
    const-string v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 5268
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 5269
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    goto/16 :goto_2

    .line 5270
    :cond_13
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-nez v7, :cond_4

    .line 5272
    const-string v7, "enter"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 5274
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 5291
    .restart local v3    # "modeChange":Z
    :cond_15
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v8, 0x7f0e01a0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_4

    .line 5295
    .restart local v4    # "notifications":Landroid/view/View;
    .restart local v6    # "visible":Ljava/lang/String;
    :cond_16
    const/4 v5, 0x0

    goto :goto_5

    .line 5301
    .end local v4    # "notifications":Landroid/view/View;
    .end local v6    # "visible":Ljava/lang/String;
    .restart local v2    # "mode":Ljava/lang/String;
    :cond_17
    const-string v7, "translucent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v1, 0x2

    goto :goto_6

    :cond_18
    const-string v7, "semi-transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v1, 0x1

    goto :goto_6

    :cond_19
    const-string v7, "transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v1, 0x4

    goto :goto_6

    :cond_1a
    const-string v7, "warning"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const/4 v1, 0x5

    goto :goto_6

    :cond_1b
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public displayNotificationFromHeadsUp(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2231
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2232
    .local v0, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 2241
    :goto_0
    return-void

    .line 2235
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 2237
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2239
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 2240
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4308
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4309
    :try_start_0
    const-string v3, "Current Status Bar state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mExpandedVisible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mTrackingPosition="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTickerEnabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4313
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v3, :cond_0

    .line 4314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTicking="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTickerView: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4317
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mTracking="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisplayMetrics="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStackScroller: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStackScroller: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " scroll "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollX()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollY()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4323
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4325
    const-string v3, "  mInteractingWindows="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4326
    const-string v3, "  mStatusBarWindowState="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4327
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    invoke-static {v3}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4328
    const-string v3, "  mStatusBarMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4329
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4330
    const-string v3, "  mDozing="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4331
    const-string v3, "  mZenMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4332
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenMode:I

    invoke-static {v3}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4333
    const-string v3, "  mUseHeadsUp="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4334
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4335
    const-string v3, "  interrupting package: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4336
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hunStateToString(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4337
    const-string v3, "mStatusBarView"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 4338
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v3, :cond_1

    .line 4339
    const-string v3, "  mNavigationBarWindowState="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4340
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    invoke-static {v3}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4341
    const-string v3, "  mNavigationBarMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4342
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4343
    const-string v3, "mNavigationBarView"

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 4346
    :cond_1
    const-string v3, "  mNavigationBarView="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4347
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v3, :cond_5

    .line 4348
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4353
    :goto_0
    const-string v3, "  mMediaSessionManager="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4354
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4355
    const-string v3, "  mMediaNotificationKey="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4356
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4357
    const-string v3, "  mMediaController="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4358
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4359
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_2

    .line 4360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4362
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4363
    const-string v3, "  mMediaMetadata="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4364
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4365
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v3, :cond_3

    .line 4366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v5, "android.media.metadata.TITLE"

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4368
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4370
    const-string v3, "  Panels: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4371
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v3, :cond_4

    .line 4372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    mNotificationPanel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4374
    const-string v3, "      "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4375
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4378
    :cond_4
    invoke-static {p2}, Lcom/android/systemui/doze/DozeLog;->dump(Ljava/io/PrintWriter;)V

    .line 4381
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v4

    .line 4382
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const-string v5, "  "

    invoke-virtual {v3, p2, v5}, Lcom/android/systemui/statusbar/NotificationData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4383
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4385
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 4386
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  system icons: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4387
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 4388
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 4389
    .local v2, "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4387
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4323
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4350
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4383
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 4412
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4413
    const/4 v1, 0x0

    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 4414
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    if-eqz v3, :cond_7

    .line 4415
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3, p1, p2, p3, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 4413
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4419
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v3, :cond_9

    .line 4420
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4423
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    if-eqz v3, :cond_a

    .line 4424
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4426
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    if-eqz v3, :cond_b

    .line 4427
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4429
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v3, :cond_c

    .line 4430
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4432
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v3, :cond_d

    .line 4433
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BatteryController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4435
    :cond_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    if-eqz v3, :cond_e

    .line 4436
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4438
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    if-eqz v3, :cond_f

    .line 4439
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4443
    :cond_f
    const-string v3, "Q.P.: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4444
    const-string v3, "  mShowLockscreenNotifications="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4445
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 4446
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4448
    return-void
.end method

.method public enableSignals(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 7407
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 7417
    :cond_0
    :goto_0
    return-void

    .line 7408
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0e03b5

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 7410
    .local v0, "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    if-eqz v0, :cond_0

    .line 7411
    if-eqz p1, :cond_2

    .line 7412
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setVisibility(I)V

    goto :goto_0

    .line 7414
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setVisibility(I)V

    goto :goto_0
.end method

.method public fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "beforeFading"    # Ljava/lang/Runnable;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 5431
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 5432
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)V

    .line 5458
    .local v0, "hideRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5459
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V

    .line 5463
    :goto_0
    return-void

    .line 5461
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public findAndUpdateMediaNotifications()V
    .locals 21

    .prologue
    .line 2819
    const/4 v10, 0x0

    .line 2821
    .local v10, "metaDataChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2822
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v5

    .line 2823
    .local v5, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2824
    .local v3, "N":I
    const/4 v9, 0x0

    .line 2825
    .local v9, "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/4 v6, 0x0

    .line 2826
    .local v6, "controller":Landroid/media/session/MediaController;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_1

    .line 2827
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2828
    .local v7, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2829
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v19, "android.mediaSession"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/media/session/MediaSession$Token;

    .line 2831
    .local v16, "token":Landroid/media/session/MediaSession$Token;
    if-eqz v16, :cond_0

    .line 2832
    new-instance v6, Landroid/media/session/MediaController;

    .end local v6    # "controller":Landroid/media/session/MediaController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v6, v0, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 2833
    .restart local v6    # "controller":Landroid/media/session/MediaController;
    if-eqz v6, :cond_0

    .line 2835
    move-object v9, v7

    .line 2826
    .end local v16    # "token":Landroid/media/session/MediaSession$Token;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2841
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    if-nez v9, :cond_5

    .line 2846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 2847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v14

    .line 2855
    .local v14, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v13, v17, -0x1

    .local v13, "pos":I
    :goto_1
    if-ltz v13, :cond_5

    .line 2856
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;

    .line 2859
    .local v4, "aController":Landroid/media/session/MediaController;
    if-nez v4, :cond_3

    .line 2855
    :cond_2
    :goto_2
    :sswitch_0
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 2860
    :cond_3
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v15

    .line 2861
    .local v15, "state":Landroid/media/session/PlaybackState;
    if-eqz v15, :cond_2

    .line 2862
    invoke-virtual {v15}, Landroid/media/session/PlaybackState;->getState()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 2868
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2870
    .local v12, "pkg":Ljava/lang/String;
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_2

    .line 2871
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2872
    .restart local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2877
    move-object v6, v4

    .line 2878
    move-object v9, v7

    .line 2879
    goto :goto_2

    .line 2870
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2887
    .end local v4    # "aController":Landroid/media/session/MediaController;
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "pos":I
    .end local v14    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    .end local v15    # "state":Landroid/media/session/PlaybackState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 2892
    const-string v17, "PhoneStatusBar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DEBUG_MEDIA: Disconnecting from old controller: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2895
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListenerRegisted:Z

    .line 2897
    :cond_6
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    .line 2899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 2900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2901
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListenerRegisted:Z

    .line 2902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2908
    if-nez v9, :cond_a

    const/4 v11, 0x0

    .line 2912
    .local v11, "notificationKey":Ljava/lang/String;
    :goto_4
    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 2918
    :cond_7
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    .line 2925
    .end local v11    # "notificationKey":Ljava/lang/String;
    :cond_8
    :goto_5
    const/4 v10, 0x1

    .line 2933
    :cond_9
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2935
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    .line 2936
    return-void

    .line 2908
    :cond_a
    :try_start_1
    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 2921
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2922
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    goto :goto_5

    .line 2933
    .end local v3    # "N":I
    .end local v5    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v6    # "controller":Landroid/media/session/MediaController;
    .end local v8    # "i":I
    .end local v9    # "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 2862
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public finishKeyguardFadingAway()V
    .locals 1

    .prologue
    .line 5513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    .line 5514
    return-void
.end method

.method public flipToNotifications()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-wide/16 v8, 0x15e

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6305
    const-string v0, "PhoneStatusBar"

    const-string v1, "flipToNotifications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6307
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6308
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6309
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6311
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_5

    .line 6312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6313
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v5, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 6314
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    .line 6317
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanel(Z)V

    .line 6318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 6319
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_8

    .line 6320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 6321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6359
    :cond_6
    :goto_0
    return-void

    .line 6322
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v0, :cond_6

    .line 6323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0, v6}, Lcom/android/systemui/qs/QSEditPanel;->setVisibility(I)V

    .line 6324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6328
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 6329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    aput v7, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    .line 6336
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 6337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    .line 6344
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    aput v7, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    .line 6350
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v5, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    .line 6356
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.EXPANDED_NOTI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6357
    const-string v0, "PhoneStatusBar"

    const-string v1, "flipToNotifications in EXPAND_NOTI_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public flipToSettings()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const-wide/16 v6, 0x15e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6245
    const-string v0, "PhoneStatusBar"

    const-string v1, "flipToSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6247
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    if-nez v0, :cond_1

    .line 6302
    :cond_0
    :goto_0
    return-void

    .line 6249
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6250
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6251
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6252
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6254
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanel(Z)V

    .line 6256
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_7

    .line 6257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    if-eqz v0, :cond_6

    .line 6258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    .line 6260
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v0, :cond_0

    .line 6261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSEditPanel;->setVisibility(I)V

    .line 6262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSEditPanel;->bringToFront()V

    .line 6264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    .line 6269
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 6270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v4, [F

    aput v5, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    .line 6277
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 6278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v4, [F

    aput v8, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    .line 6285
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v4, [F

    aput v5, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    .line 6291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v4, [F

    aput v8, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    .line 6298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.EXPANDED_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6299
    const-string v0, "PhoneStatusBar"

    const-string v1, "flipToSettings in EXPAND_SETTING_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    goto/16 :goto_0
.end method

.method public getBarState()I
    .locals 1

    .prologue
    .line 5375
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 2155
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 1

    .prologue
    .line 3828
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object v0
.end method

.method public getKeyguardFadingAwayDelay()J
    .locals 2

    .prologue
    .line 5970
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .locals 2

    .prologue
    .line 5974
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method protected getMaxKeyguardNotifications()I
    .locals 1

    .prologue
    .line 5864
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    return v0
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    .prologue
    .line 5868
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method public getQuickSettingsOverlayParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 5966
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method public getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, -0x1

    .line 1863
    const/4 v6, 0x0

    .line 1864
    .local v6, "opaque":Z
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x820100

    if-eqz v6, :cond_1

    move v5, v1

    :goto_0
    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1872
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1873
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1875
    :cond_0
    const v1, 0x800053

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1876
    const-string v1, "SearchPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1877
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1879
    return-object v0

    .line 1864
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v5, -0x3

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 1918
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 1919
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1920
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 1923
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    return v1
.end method

.method protected getStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method public getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method public getSystemIconArea()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 5982
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSystemIcons()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 5978
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIcons:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public goToKeyguard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5955
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onGoToKeyguard()V

    .line 5957
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5958
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5960
    :cond_0
    return-void
.end method

.method public goToLockedShade(Landroid/view/View;)V
    .locals 8
    .param p1, "expandView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5915
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasNotification()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5916
    const-string v2, "PhoneStatusBar"

    const-string v3, "goToLockedShade but doesn\'t have notification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5948
    :goto_0
    return-void

    .line 5919
    :cond_0
    const/4 v1, 0x0

    .line 5920
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 5921
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5930
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPublicShowing()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 5933
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-nez v2, :cond_5

    :cond_2
    move v0, v3

    .line 5940
    .local v0, "fullShadeNeedsBouncer":Z
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 5941
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5942
    invoke-direct {p0, v4, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5943
    if-eqz v1, :cond_3

    .line 5944
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 5946
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    goto :goto_0

    .end local v0    # "fullShadeNeedsBouncer":Z
    :cond_4
    move v2, v4

    .line 5930
    goto :goto_1

    :cond_5
    move v0, v4

    .line 5933
    goto :goto_2
.end method

.method protected haltTicker()V
    .locals 1

    .prologue
    .line 5176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v0, :cond_0

    .line 5177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    .line 5179
    :cond_0
    return-void
.end method

.method public hasActiveNotifications()Z
    .locals 1

    .prologue
    .line 6093
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideBouncerFrame()Z
    .locals 1

    .prologue
    .line 6938
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public hideKeyguard()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5469
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5470
    .local v0, "staying":Z
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5471
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v1, :cond_1

    .line 5472
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5473
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 5474
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    .line 5475
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 5476
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5481
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5483
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkHomeCitySettingsDialog(Z)V

    .line 5484
    return v0

    .line 5479
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantCollapseNotificationPanel()V

    goto :goto_0
.end method

.method public hideQsDetailviewPanel()V
    .locals 2

    .prologue
    const/16 v1, 0x3ec

    .line 7085
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7086
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 7088
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 7089
    return-void
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 6068
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 6069
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 6070
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideRecents(ZZ)V

    .line 6071
    return-void
.end method

.method public hideSearchPanel()V
    .locals 3

    .prologue
    .line 1908
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    .line 1909
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    .line 1910
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1912
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1913
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1915
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 5711
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3801
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CHATTY:Z

    if-eqz v3, :cond_0

    .line 3802
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 3803
    const-string v3, "PhoneStatusBar"

    const-string v4, "panel: %s at (%f, %f) mDisabled=0x%08x"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-nez v3, :cond_2

    .line 3815
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_3

    :cond_1
    move v0, v2

    .line 3818
    .local v0, "upOrCancel":Z
    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v3, :cond_4

    .line 3819
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3824
    .end local v0    # "upOrCancel":Z
    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v1

    .line 3815
    goto :goto_0

    .line 3821
    .restart local v0    # "upOrCancel":Z
    :cond_4
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    goto :goto_1
.end method

.method public interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p1, "ti"    # Landroid/animation/TimeInterpolator;
    .param p2, "a"    # Landroid/animation/Animator;

    .prologue
    .line 3606
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3607
    return-object p2
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 5410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v0

    return v0
.end method

.method public isCoverViewShowing()Z
    .locals 1

    .prologue
    .line 4643
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 3398
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return v0
.end method

.method public isEmergencyModeActivated()Z
    .locals 1

    .prologue
    .line 1653
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    return v0
.end method

.method public isFalsingThresholdNeeded()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3392
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 3393
    .local v1, "onKeyguard":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v0

    .line 3394
    .local v0, "isMethodInsecure":Z
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    if-eqz v4, :cond_2

    :cond_0
    :goto_1
    return v2

    .end local v0    # "isMethodInsecure":Z
    .end local v1    # "onKeyguard":Z
    :cond_1
    move v1, v3

    .line 3392
    goto :goto_0

    .restart local v0    # "isMethodInsecure":Z
    .restart local v1    # "onKeyguard":Z
    :cond_2
    move v2, v3

    .line 3394
    goto :goto_1
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    .prologue
    .line 3380
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    return v0
.end method

.method public isInLaunchTransition()Z
    .locals 1

    .prologue
    .line 5418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardFadingAway()Z
    .locals 1

    .prologue
    .line 5506
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    return v0
.end method

.method public isKidsModeActivated()Z
    .locals 1

    .prologue
    .line 1634
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeActivated:Z

    return v0
.end method

.method public isQsExpanded()Z
    .locals 1

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    return v0
.end method

.method public isScreenOnComingFromTouch()Z
    .locals 1

    .prologue
    .line 3388
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    return v0
.end method

.method public isScrimSrcModeEnabled()Z
    .locals 1

    .prologue
    .line 3407
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 7422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDimens()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5047
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5049
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x1050010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 5052
    const v3, 0x1050014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5054
    .local v1, "newIconSize":I
    const v3, 0x7f0c029b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 5057
    .local v0, "newIconHPadding":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    if-eq v1, v3, :cond_1

    .line 5059
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 5060
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 5064
    :cond_1
    const v3, 0x7f0c027b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 5066
    const v3, 0x7f0f0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 5067
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    if-gtz v3, :cond_2

    .line 5068
    const v3, 0x800033

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 5071
    :cond_2
    const v3, 0x7f0c02ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabelHeight:I

    .line 5072
    const v3, 0x7f0c02a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarHeaderHeight:I

    .line 5074
    const v3, 0x7f0c02ae

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 5075
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 5076
    :cond_3
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 5079
    :cond_4
    const v3, 0x7f0f001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    .line 5080
    const v3, 0x7f0c0295

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRowMinHeight:I

    .line 5081
    const v3, 0x7f0c0296

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRowMaxHeight:I

    .line 5083
    const v3, 0x7f0f0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    .line 5085
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    .line 5087
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "PhoneStatusBar"

    const-string v4, "updateResources"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5088
    :cond_5
    return-void
.end method

.method makeExpandedInvisible()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3687
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeExpandedInvisible: mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-nez v0, :cond_1

    .line 3787
    :cond_0
    :goto_0
    return-void

    .line 3693
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_2

    .line 3694
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeQsEditPanel()V

    .line 3696
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_3

    .line 3697
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeQsDetailviewPanel()V

    .line 3700
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v7, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v4, :cond_7

    .line 3704
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v7, :cond_6

    .line 3705
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3706
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantExpand()V

    .line 3707
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    .line 3708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissIfInsecure()V

    goto :goto_0

    .line 3710
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissIfInsecure()V

    goto :goto_0

    .line 3714
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantExpand()V

    .line 3715
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0

    .line 3721
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3724
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3725
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3727
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setVisibility(I)V

    .line 3728
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVisibility(I)V

    .line 3731
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_a

    .line 3732
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanel(Z)V

    .line 3733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 3736
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3737
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3738
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEditButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3739
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3741
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 3742
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3743
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3745
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 3746
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3747
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3750
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    .line 3751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3753
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 3754
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3758
    :cond_12
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_13

    .line 3759
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 3760
    const/high16 v0, 0x10a0000

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 3766
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 3768
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3769
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_14

    .line 3770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3771
    :cond_14
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarExpanded(Z)V

    .line 3775
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    .line 3778
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 3780
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 3781
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3784
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    goto/16 :goto_0
.end method

.method makeExpandedVisible(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3489
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeExpandedVisible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3511
    :cond_0
    :goto_0
    return-void

    .line 3494
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3495
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v2, :cond_2

    .line 3496
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3498
    :cond_2
    const/16 v2, -0x2710

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 3502
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarExpanded(Z)V

    .line 3503
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    .line 3505
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3506
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 3507
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    if-nez p1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 3508
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3510
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    goto :goto_0
.end method

.method protected makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 45

    .prologue
    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 853
    .local v18, "context":Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDiagnosticLogs:Z

    .line 857
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    .line 859
    .local v33, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 862
    const v3, 0x1050014

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 865
    const v3, 0x7f040052

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 871
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v0, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e019c

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 890
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 894
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01b9

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/phone/PanelHolder;

    .line 898
    .local v21, "holder":Lcom/android/systemui/statusbar/phone/PanelHolder;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanelHolder(Lcom/android/systemui/statusbar/phone/PanelHolder;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01a8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01a9

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBouncerContainer:Landroid/view/ViewGroup;

    .line 906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardEffectController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e01b4

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f0e01ba

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setEffectLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e03b4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMDMOverlayContainer:Landroid/widget/FrameLayout;

    .line 916
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    if-nez v3, :cond_0

    .line 917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 922
    :cond_0
    const v3, 0x7f04000c

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    .line 924
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 933
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    .line 936
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v38

    .line 937
    .local v38, "showNav":Z
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasNavigationBar="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_1
    if-eqz v38, :cond_2

    .line 939
    const v3, 0x7f040055

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V

    .line 954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    .end local v38    # "showNav":Z
    :cond_2
    :goto_3
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPixelFormat:I

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01a5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01bc

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 970
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01bd

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01a1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    .line 972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01a4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01a3

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    .line 974
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e019f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01be

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSignalBatteryIcons:Landroid/widget/LinearLayout;

    .line 981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01ae

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01ac

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    .line 985
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400b7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    .line 991
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOverflowClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400b9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v42

    check-cast v42, Lcom/android/systemui/statusbar/SpeedBumpView;

    .line 1001
    .local v42, "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400b6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/DismissView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    .line 1003
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/DismissView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissView(Lcom/android/systemui/statusbar/DismissView;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040059

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ToggleSliderView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040058

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/QconnectSfinderView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    .line 1018
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0085

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    .line 1019
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setToggleSliderView(Lcom/android/systemui/statusbar/ToggleSliderView;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setQconnectSfinderView(Lcom/android/systemui/statusbar/QconnectSfinderView;)V

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040054

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/MultiSIMView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    .line 1047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMultiSIMLayout(Lcom/android/systemui/statusbar/MultiSIMView;)V

    .line 1051
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    .line 1053
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01b1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/BackDropView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 1054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v4, 0x7f0e01b3

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v4, 0x7f0e01b2

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01b5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Lcom/android/systemui/statusbar/ScrimView;

    .line 1058
    .local v35, "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01bb

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Lcom/android/systemui/statusbar/ScrimView;

    .line 1059
    .local v36, "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    new-instance v3, Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e01b4

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/sec/EffectBehindView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setEffectBehindView(Lcom/android/keyguard/sec/EffectBehindView;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0376

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .line 1065
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0129

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1068
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0e01bd

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    .line 1069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0131

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusView:Landroid/view/View;

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0e012f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/CarrierText;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardCarrierText:Lcom/android/keyguard/CarrierText;

    .line 1080
    const v3, 0x7f0b002a

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    .line 1082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01a6

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/view/ViewStub;

    .line 1083
    .local v43, "tickerStub":Landroid/view/ViewStub;
    if-eqz v43, :cond_4

    .line 1084
    invoke-virtual/range {v43 .. v43}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    .line 1085
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 1087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e03a5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Lcom/android/systemui/statusbar/phone/TickerView;

    .line 1088
    .local v44, "tickerView":Lcom/android/systemui/statusbar/phone/TickerView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    move-object/from16 v0, v44

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 1089
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getTickerPaddingValues()V

    .line 1092
    .end local v44    # "tickerView":Lcom/android/systemui/statusbar/phone/TickerView;
    :cond_4
    const v3, 0x7f0c027b

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 1095
    new-instance v3, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 1096
    new-instance v3, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 1097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 1110
    new-instance v3, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 1111
    new-instance v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 1112
    new-instance v3, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 1113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1114
    new-instance v3, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 1116
    :cond_5
    new-instance v3, Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/UserInfoController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 1117
    const-class v3, Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    .line 1118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v3}, Lcom/android/systemui/volume/VolumeComponent;->getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 1119
    new-instance v3, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1122
    new-instance v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01bf

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/android/systemui/statusbar/MSimSignalClusterView;

    .line 1125
    .local v28, "mSimSignalCluster":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0e01bf

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/systemui/statusbar/MSimSignalClusterView;

    .line 1129
    .local v29, "mSimsignalClusterKeyguard":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_9

    .line 1130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 1129
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 868
    .end local v21    # "holder":Lcom/android/systemui/statusbar/phone/PanelHolder;
    .end local v22    # "i":I
    .end local v28    # "mSimSignalCluster":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .end local v29    # "mSimsignalClusterKeyguard":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .end local v35    # "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    .end local v36    # "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    .end local v42    # "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    .end local v43    # "tickerStub":Landroid/view/ViewStub;
    :cond_6
    const v3, 0x7f0400c0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    goto/16 :goto_0

    .line 888
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0374

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    goto/16 :goto_1

    .line 896
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e03b3

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/phone/PanelHolder;

    .restart local v21    # "holder":Lcom/android/systemui/statusbar/phone/PanelHolder;
    goto/16 :goto_2

    .line 1135
    .restart local v22    # "i":I
    .restart local v28    # "mSimSignalCluster":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .restart local v29    # "mSimsignalClusterKeyguard":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .restart local v35    # "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    .restart local v36    # "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    .restart local v42    # "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    .restart local v43    # "tickerStub":Landroid/view/ViewStub;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->addEmergencyLabelView(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0084

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    .line 1143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e03b2

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSubsLabel:Landroid/widget/TextView;

    .line 1144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 1146
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carrierlabel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "operator label="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSubsLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    if-eqz v3, :cond_a

    .line 1149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasMobileDataFeature()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->addMobileLabelView(Landroid/widget/TextView;)V

    .line 1172
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setCarrierView(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1234
    .end local v22    # "i":I
    .end local v28    # "mSimSignalCluster":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .end local v29    # "mSimsignalClusterKeyguard":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    :cond_a
    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 1239
    new-instance v3, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/AccessibilityController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 1241
    new-instance v3, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/NextAlarmController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 1242
    new-instance v3, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 1243
    new-instance v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 1245
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v5, 0x7f0e0145

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 1250
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1254
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    .line 1255
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

    .line 1256
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    .line 1257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_panel_brightness_adjustment"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z

    .line 1260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pms_notification_panel_brightness_adjustment"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pms_notification_panel_brightness_adjustment"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnablebySettings:Z

    .line 1263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_panel_brightness_adjustment"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pms_notification_panel_brightness_adjustment"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPmsBrightnessEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$PmsBrightnessEnableObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EasyModeEnableObserver;->onChange(Z)V

    .line 1272
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCocktailTickerEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;

    .line 1273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cocktail_bar_tickers_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCocktailTickerEnableObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cocktail_bar_tickers_enabled"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_26

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z

    .line 1283
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01ee

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    .line 1284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02029b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01f0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 1287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v4, 0x7f0e0386

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    .line 1288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1293
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_28

    .line 1294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-nez v3, :cond_c

    .line 1295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/LayoutInflater;

    .line 1296
    .local v24, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040064

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    .line 1297
    .local v17, "container":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01ec

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    .line 1301
    .end local v17    # "container":Landroid/widget/FrameLayout;
    .end local v24    # "inflater":Landroid/view/LayoutInflater;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v3, :cond_d

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1304
    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1318
    .local v2, "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    :goto_b
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setEditMode(Z)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSEditPanel;->setTiles(Ljava/util/Collection;)V

    .line 1320
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setEditMode(Z)V

    .line 1326
    .end local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    :cond_d
    :goto_c
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_e

    .line 1327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    if-nez v3, :cond_e

    .line 1328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/LayoutInflater;

    .line 1329
    .restart local v24    # "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040062

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    .line 1330
    .restart local v17    # "container":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01e6

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewPanel:Landroid/view/View;

    .line 1335
    .end local v17    # "container":Landroid/widget/FrameLayout;
    .end local v24    # "inflater":Landroid/view/LayoutInflater;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v3, :cond_13

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1338
    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1352
    .restart local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 1356
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setSingleLine(Z)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    .line 1368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e01ef

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    .line 1369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_f

    .line 1370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setLayoutDirection(I)V

    .line 1372
    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    .line 1373
    new-instance v5, Lcom/android/systemui/settings/BrightnessController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    const v4, 0x7f0e03a7

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    const v7, 0x7f0e01e1

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {v5, v6, v3, v4}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 1376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v3}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 1380
    new-instance v3, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    const v4, 0x7f0e01e1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/settings/ToggleSlider;

    .line 1382
    .local v16, "brightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e01e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/android/systemui/settings/ToggleSlider;

    .line 1383
    .local v30, "mirror":Lcom/android/systemui/settings/ToggleSlider;
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 1387
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSFinderQConnectView:Z

    if-eqz v3, :cond_10

    .line 1388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    if-eqz v3, :cond_10

    .line 1389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    const v4, 0x7f0e0202

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSFinderButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    const v4, 0x7f0e0203

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQConnectButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    const v4, 0x7f0e0203

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0340

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1395
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_10

    .line 1396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    const v4, 0x7f0e0202

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020692

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    const v4, 0x7f0e0203

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020692

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    const v4, 0x7f0e0205

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    const v4, 0x7f0e01e0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    .line 1407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0201

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    .line 1408
    new-instance v5, Lcom/android/systemui/settings/BrightnessController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    const v4, 0x7f0e03a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    const v7, 0x7f0e01e1

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {v5, v6, v3, v4}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 1411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v3}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 1412
    const v3, 0x7f0c0353

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessHeight:I

    .line 1415
    new-instance v3, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 1416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    const v4, 0x7f0e01e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/settings/ToggleSlider;

    .line 1417
    .local v26, "keyguardbrightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e01e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/android/systemui/settings/ToggleSlider;

    .line 1418
    .local v27, "keyguardmirror":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 1422
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSFinderQConnectView:Z

    if-eqz v3, :cond_12

    .line 1423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    if-eqz v3, :cond_11

    .line 1424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e0202

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSFinderButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e0203

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQConnectButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e0203

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0340

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1430
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_2a

    .line 1431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e0202

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020692

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e0203

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f020692

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e0205

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1447
    :cond_11
    :goto_e
    const v3, 0x7f0c0377

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQConnectHeight:I

    .line 1449
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    .line 1450
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    .line 1451
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V

    .line 1455
    .end local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    .end local v16    # "brightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    .end local v26    # "keyguardbrightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    .end local v27    # "keyguardmirror":Lcom/android/systemui/settings/ToggleSlider;
    .end local v30    # "mirror":Lcom/android/systemui/settings/ToggleSlider;
    :cond_13
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v3, :cond_14

    .line 1456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01a2

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    .line 1457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addATTMobileLabelView(Landroid/widget/TextView;)V

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    .line 1463
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 1464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/UserInfoController;->reloadUserInfo()V

    .line 1467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01c1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/BatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V

    .line 1474
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v3, :cond_16

    .line 1475
    const v3, 0x7f0c0293

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    .line 1476
    .local v31, "outerBounds":I
    const v3, 0x7f0c0299

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 1477
    .local v23, "imageBounds":I
    move/from16 v0, v23

    int-to-float v3, v0

    move/from16 v0, v31

    int-to-float v4, v0

    div-float v34, v3, v4

    .line 1480
    .local v34, "scale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e0130

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/view/View;

    .line 1482
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDataTypeBrand:Ljava/lang/String;

    .line 1483
    const-string v3, "ORANGE"

    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e0375

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/view/View;

    .line 1488
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOperatorLogoIndicator(Landroid/view/View;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOperatorLogoIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addOperatorLogoIconView(Landroid/view/View;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addMoreIconView(Landroid/view/View;)V

    .line 1494
    .end local v23    # "imageBounds":I
    .end local v31    # "outerBounds":I
    .end local v34    # "scale":F
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/PowerManager;

    .line 1495
    .local v32, "pm":Landroid/os/PowerManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    invoke-virtual/range {v32 .. v32}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v3, "android.intent.action.SCREEN_ON"

    :goto_f
    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1499
    new-instance v20, Landroid/content/IntentFilter;

    invoke-direct/range {v20 .. v20}, Landroid/content/IntentFilter;-><init>()V

    .line 1500
    .local v20, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1501
    const-string v3, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1502
    const-string v3, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1503
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1504
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1508
    const-string v3, "com.android.systemui.demo"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1509
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1510
    const-string v3, "android.settings.SIMCARD_MGT_ACTIVATED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1514
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 1516
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startGlyphRasterizeHack()V

    .line 1519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e037a

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    .line 1520
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_17

    .line 1521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e037b

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    .line 1523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const v4, 0x7f020112

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1526
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_18

    .line 1527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const v4, 0x7f0d025a

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1531
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e037d

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    .line 1532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_19

    .line 1533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    const v4, 0x7f0d042b

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1537
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e037f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    .line 1538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0205

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingDivider:Landroid/widget/ImageView;

    .line 1540
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_1a

    .line 1541
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e037b

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    .line 1542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1a

    .line 1543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    const v4, 0x7f0d0268

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1550
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e037e

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    .line 1551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1b

    .line 1552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    const v4, 0x7f0d025b

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1561
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0379

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditButton:Landroid/view/View;

    .line 1562
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_1c

    .line 1563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1565
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_1c

    .line 1566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditButton:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditButton:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1576
    :cond_1c
    const-string v3, "quickconnect"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/quickconnect/IQuickConnectManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/quickconnect/IQuickConnectManager;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1577
    const-string v3, "STATUSBAR-PhoneStatusBar"

    const-string v4, "mQconnectEnable is true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectEnable:Z

    .line 1582
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e01c0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    .line 1583
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0e01c0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;

    .line 1584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_battery_percentage"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_battery_percentage"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    const/16 v37, 0x1

    .line 1588
    .local v37, "showBatteryText":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    if-eqz v37, :cond_2e

    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;

    if-eqz v37, :cond_2f

    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyeModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->onChange(Z)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kids_home_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->onChange(Z)V

    .line 1607
    new-instance v3, Lcom/android/systemui/statusbar/DoNotDisturb;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/DoNotDisturb;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    .line 1627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v3

    .line 1144
    .end local v20    # "filter":Landroid/content/IntentFilter;
    .end local v32    # "pm":Landroid/os/PowerManager;
    .end local v37    # "showBatteryText":Z
    .restart local v22    # "i":I
    .restart local v28    # "mSimSignalCluster":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .restart local v29    # "mSimsignalClusterKeyguard":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 1156
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_6

    .line 1175
    .end local v22    # "i":I
    .end local v28    # "mSimSignalCluster":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    .end local v29    # "mSimsignalClusterKeyguard":Lcom/android/systemui/statusbar/MSimSignalClusterView;
    :cond_20
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 1176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0e03b5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1178
    .local v39, "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0e03b5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1180
    .local v40, "signalClusterKeyguard":Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v4, 0x7f0e03b5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 1182
    .local v41, "signalClusterQs":Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v25

    .line 1192
    .local v25, "isAPhone":Z
    if-eqz v25, :cond_21

    .line 1193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addEmergencyLabelView(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    .line 1196
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e0084

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    :goto_13
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 1217
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carrierlabel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    if-eqz v3, :cond_a

    .line 1220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasMobileDataFeature()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addMobileLabelView(Landroid/widget/TextView;)V

    .line 1230
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setCarrierView(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_7

    .line 1216
    :cond_22
    const/4 v3, 0x0

    goto :goto_13

    .line 1227
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto :goto_14

    .line 1257
    .end local v25    # "isAPhone":Z
    .end local v39    # "signalCluster":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v40    # "signalClusterKeyguard":Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v41    # "signalClusterQs":Lcom/android/systemui/statusbar/SignalClusterView;
    :cond_24
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 1261
    :cond_25
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 1276
    :cond_26
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 1311
    :cond_27
    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .restart local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    goto/16 :goto_b

    .line 1323
    .end local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->removeView(Landroid/view/View;)V

    goto/16 :goto_c

    .line 1345
    :cond_29
    new-instance v2, Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/statusbar/phone/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/statusbar/policy/SecurityController;)V

    .restart local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    goto/16 :goto_d

    .line 1435
    .restart local v16    # "brightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    .restart local v26    # "keyguardbrightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    .restart local v27    # "keyguardmirror":Lcom/android/systemui/settings/ToggleSlider;
    .restart local v30    # "mirror":Lcom/android/systemui/settings/ToggleSlider;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e0204

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v19, v3, v4

    .line 1436
    .local v19, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_2b

    .line 1437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e0204

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1440
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e0206

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v19, v3, v4

    .line 1441
    if-eqz v19, :cond_11

    .line 1442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    const v4, 0x7f0e0206

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 1495
    .end local v2    # "qsh":Lcom/android/systemui/statusbar/phone/QSTileHost;
    .end local v16    # "brightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    .end local v19    # "d":Landroid/graphics/drawable/Drawable;
    .end local v26    # "keyguardbrightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    .end local v27    # "keyguardmirror":Lcom/android/systemui/settings/ToggleSlider;
    .end local v30    # "mirror":Lcom/android/systemui/settings/ToggleSlider;
    .restart local v32    # "pm":Landroid/os/PowerManager;
    :cond_2c
    const-string v3, "android.intent.action.SCREEN_OFF"

    goto/16 :goto_f

    .line 1586
    .restart local v20    # "filter":Landroid/content/IntentFilter;
    :cond_2d
    const/16 v37, 0x0

    goto/16 :goto_10

    .line 1588
    .restart local v37    # "showBatteryText":Z
    :cond_2e
    const/16 v3, 0x8

    goto/16 :goto_11

    .line 1589
    :cond_2f
    const/16 v3, 0x8

    goto/16 :goto_12

    .line 961
    .end local v20    # "filter":Landroid/content/IntentFilter;
    .end local v32    # "pm":Landroid/os/PowerManager;
    .end local v35    # "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    .end local v36    # "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    .end local v37    # "showBatteryText":Z
    .end local v42    # "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    .end local v43    # "tickerStub":Landroid/view/ViewStub;
    :catch_0
    move-exception v3

    goto/16 :goto_3
.end method

.method public notificationLightOff()V
    .locals 2

    .prologue
    .line 3871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNotificationLight(Z)V

    .line 3874
    :cond_0
    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 2
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 3878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNotificationLight(Z)V

    .line 3881
    :cond_0
    return-void
.end method

.method public notifyRecentPanelVisiblity(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 6988
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRecentPanelVisiblity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6990
    if-eqz p1, :cond_0

    .line 6991
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 6995
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 6996
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->dismissHelpPopup()V

    .line 6997
    return-void

    .line 6993
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 5803
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 5804
    .local v0, "previousView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    if-eqz v0, :cond_0

    .line 5805
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 5807
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5808
    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 5821
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5826
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 5720
    const/4 v0, 0x0

    .line 5722
    .local v0, "needToCheckBackKey":Z
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5723
    const/4 v0, 0x1

    .line 5729
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5752
    :goto_0
    return v1

    .line 5733
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5734
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5735
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail()V

    .line 5739
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 5737
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCloseQs()V

    goto :goto_1

    .line 5743
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v3, :cond_4

    .line 5744
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0

    .line 5748
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v2, v1, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v2, v3, :cond_5

    .line 5749
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 5752
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCameraHintStarted()V
    .locals 0

    .prologue
    .line 5846
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 4849
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4851
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4852
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4854
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 4855
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4856
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocale:Ljava/util/Locale;

    .line 4857
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 4859
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 4860
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClockSize()V

    .line 4861
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    .line 4862
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 4863
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    .line 4864
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSEditMode:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    if-nez v0, :cond_5

    .line 4865
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 4875
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardCarrierText:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setGravity(I)V

    .line 4882
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_4

    .line 4883
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOrientation:I

    .line 4884
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 4905
    :cond_4
    :goto_1
    return-void

    .line 4866
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSDetailviewMode:Z

    if-eqz v0, :cond_6

    .line 4867
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->collapseQsDetailviewPanel()V

    .line 4868
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->expandQsDetailviewPanel()V

    goto :goto_0

    .line 4869
    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_2

    .line 4870
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapseQsEditPanel()V

    .line 4871
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandQsEditPanel()V

    goto :goto_0

    .line 4888
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_7

    .line 4889
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 4891
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_8

    .line 4892
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHSView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 4895
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v0, :cond_4

    .line 4896
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanel(Z)V

    goto :goto_1

    .line 4884
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCoverAppCovered(Z)I
    .locals 4
    .param p1, "covered"    # Z

    .prologue
    .line 4649
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-nez v1, :cond_1

    .line 4650
    const/4 v0, 0x1

    .line 4656
    .local v0, "result":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eq p1, v1, :cond_0

    .line 4657
    const-string v1, "CoverUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverAppCovered - covered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4658
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    .line 4659
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverWindow()V

    .line 4661
    :cond_0
    return v0

    .line 4651
    .end local v0    # "result":I
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v1, :cond_2

    .line 4652
    const/4 v0, 0x2

    .restart local v0    # "result":I
    goto :goto_0

    .line 4654
    .end local v0    # "result":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public onDragDownReset()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5889
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5890
    return-void
.end method

.method public onDraggedDown(Landroid/view/View;)Z
    .locals 1
    .param p1, "startingChild"    # Landroid/view/View;

    .prologue
    .line 5875
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5878
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToLockedShade(Landroid/view/View;)V

    .line 5879
    const/4 v0, 0x1

    .line 5883
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHeadsUpDismissed()V
    .locals 1

    .prologue
    .line 5006
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->dismiss()V

    .line 5007
    return-void
.end method

.method public onHintFinished()V
    .locals 0

    .prologue
    .line 5841
    return-void
.end method

.method public onMenuPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5716
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onMenuPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhoneHintStarted()V
    .locals 0

    .prologue
    .line 5851
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5992
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    .line 5993
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    .line 5994
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5995
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5998
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    .line 5999
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 6000
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurnedOn()V

    .line 6001
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 6002
    return-void
.end method

.method public onSpacePressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5756
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 5758
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 5761
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onThresholdReached()V
    .locals 3

    .prologue
    .line 5894
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5895
    return-void
.end method

.method public onTouchSlopExceeded()V
    .locals 1

    .prologue
    .line 5899
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 5900
    return-void
.end method

.method public onTrackingStarted()V
    .locals 0

    .prologue
    .line 5829
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 5830
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 5854
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5855
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5860
    :cond_1
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 0

    .prologue
    .line 5835
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 6084
    if-eqz p1, :cond_0

    .line 6085
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 6089
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 6090
    return-void

    .line 6087
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method panelsEnabled()Z
    .locals 2

    .prologue
    .line 3485
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postAnimateCollapsePanels()V
    .locals 2

    .prologue
    .line 3525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 3526
    return-void
.end method

.method public postQuickConnectButtonOnClick()V
    .locals 4

    .prologue
    .line 6757
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6763
    return-void
.end method

.method public postStartSettingsActivity(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delay"    # I

    .prologue
    .line 5189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$47;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$47;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5195
    return-void
.end method

.method postStartTracing()V
    .locals 4

    .prologue
    .line 5147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5148
    return-void
.end method

.method public quickConnectButtonOnClick()V
    .locals 4

    .prologue
    .line 6766
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6806
    :goto_0
    return-void

    .line 6769
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDiagnosticLogs:Z

    if-eqz v1, :cond_1

    .line 6770
    const-string v1, "QUICKCONNECTBUTTON"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sendLogs(Ljava/lang/String;)V

    .line 6774
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 6775
    .local v0, "keyguardShowing":Z
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$56;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isInstantDismiss()Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    goto :goto_0
.end method

.method public refreshAllStatusBarIcons()V
    .locals 1

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 2105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 2106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 2107
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v2, 0x0

    .line 2341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    .line 2345
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    const v1, 0x7f020114

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2353
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 2355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2361
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllStatusBarIcons()V

    .line 2362
    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 2149
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeIcon slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " viewIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2152
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v5, 0x2

    .line 2275
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2277
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->clear()V

    .line 2280
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 2283
    .local v2, "old":Landroid/service/notification/StatusBarNotification;
    if-eqz v2, :cond_4

    .line 2287
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTieckerEnabledByCover:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z

    if-eqz v3, :cond_1

    .line 2292
    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v3, :cond_2

    .line 2293
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 2294
    const/4 v3, 0x1

    const/high16 v4, 0x10a0000

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 2300
    :cond_2
    const/16 v3, -0x2710

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2302
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2304
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v3, :cond_7

    .line 2305
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 2312
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasNotification()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2314
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v3, v5, :cond_4

    .line 2315
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    .line 2319
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 2322
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mReasonSweep:Z

    if-eqz v3, :cond_6

    .line 2323
    if-eqz v2, :cond_5

    .line 2324
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.accessory.intent.action.CHECK_NOTIFICATION_ITEM"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2325
    .local v1, "iForSweep":Landroid/content/Intent;
    const-string v3, "NOTIFICATION_PACKAGE_NAME"

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2326
    const-string v3, "NOTIFICATION_ID"

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2327
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2329
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.sms.action.SWEEP_NOTIFICATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2330
    .local v0, "iForMsg":Landroid/content/Intent;
    const-string v3, "NOTIFICATION_PACKAGE_NAME"

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2331
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2334
    .end local v0    # "iForMsg":Landroid/content/Intent;
    .end local v1    # "iForSweep":Landroid/content/Intent;
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mReasonSweep:Z

    .line 2337
    :cond_6
    return-void

    .line 2306
    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v3, v5, :cond_3

    .line 2307
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0
.end method

.method removePlmnString()V
    .locals 3

    .prologue
    .line 6960
    const-string v1, "STATUSBAR-PhoneStatusBar"

    const-string v2, "removePlmnString"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6961
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 6962
    const/4 v1, 0x0

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 6963
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    .line 6964
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 6967
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    .line 6970
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method public removeQsEditPanel()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 7047
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    if-eqz v0, :cond_0

    .line 7048
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditBackButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7049
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditPanel:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSEditPanel;->setVisibility(I)V

    .line 7065
    :cond_0
    return-void
.end method

.method public resetHeadsUpDecayTimer()V
    .locals 5

    .prologue
    const/16 v4, 0x407

    .line 2245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 2246
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2250
    :cond_0
    return-void
.end method

.method public scheduleHeadsUpClose()V
    .locals 2

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x405

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2260
    return-void
.end method

.method public scheduleHeadsUpEscalation()V
    .locals 2

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x406

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2265
    return-void
.end method

.method public scheduleHeadsUpOpen()V
    .locals 2

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2255
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2793
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v7, 0x7f0e019e

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2794
    .local v0, "nlo":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v6

    if-nez v6, :cond_2

    move v1, v2

    .line 2795
    .local v1, "showDot":Z
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v4

    if-nez v6, :cond_3

    :goto_1
    if-eq v1, v2, :cond_1

    .line 2796
    if-eqz v1, :cond_0

    .line 2797
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2798
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2800
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz v1, :cond_4

    move v2, v4

    :goto_2
    invoke-virtual {v6, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v1, :cond_5

    const-wide/16 v4, 0x2ee

    :goto_3
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2813
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->findAndUpdateMediaNotifications()V

    .line 2815
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 2816
    return-void

    .end local v1    # "showDot":Z
    :cond_2
    move v1, v3

    .line 2794
    goto :goto_0

    .restart local v1    # "showDot":Z
    :cond_3
    move v2, v3

    .line 2795
    goto :goto_1

    :cond_4
    move v2, v5

    .line 2800
    goto :goto_2

    :cond_5
    const-wide/16 v4, 0xfa

    goto :goto_3

    :cond_6
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    goto :goto_4
.end method

.method public setBarState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 5814
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    .line 5815
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarState(I)V

    .line 5816
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setStatusBarState(I)V

    .line 5817
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 2
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 5987
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setBouncerShowing(Z)V

    .line 5988
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 5989
    return-void
.end method

.method public setCallBackground(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 3896
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    .line 3897
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCallBackground(I)V

    .line 3899
    :cond_0
    return-void
.end method

.method setCarrierLabelVisibility(ZI)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "anim"    # I

    .prologue
    .line 6973
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarrierLabelVibibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6974
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6975
    return-void

    .line 6974
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEmptyDragAmount(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 5904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setEmptyDragAmount(F)V

    .line 5905
    return-void
.end method

.method public setFocus(I)V
    .locals 10
    .param p1, "keycode"    # I

    .prologue
    const v9, 0x7f0e0050

    const v8, 0x7f0e004f

    const v7, 0x7f0e004e

    const v6, 0x7f0e01f0

    .line 7240
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/high16 v5, 0x40000

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSPanel;->setDescendantFocusability(I)V

    .line 7241
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ToggleSliderView;

    .line 7243
    .local v0, "brightnessView":Lcom/android/systemui/statusbar/ToggleSliderView;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/QconnectSfinderView;

    .line 7245
    .local v3, "qConnectView":Lcom/android/systemui/statusbar/QconnectSfinderView;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 7247
    .local v2, "expandableRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v5, 0x7f0e037c

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 7248
    .local v1, "dateTimeView":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v4, :cond_6

    .line 7249
    if-eqz v1, :cond_0

    .line 7250
    const v4, 0x7f0e037a

    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 7251
    const v4, 0x7f0e037b

    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 7253
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7254
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 7279
    :cond_1
    :goto_0
    return-void

    .line 7255
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 7256
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_0

    .line 7257
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 7258
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 7259
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_0

    .line 7260
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 7261
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 7262
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_0

    .line 7263
    :cond_5
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7264
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findFocus()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0e0203

    invoke-virtual {v4, v5}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_0

    .line 7267
    :cond_6
    if-eqz v1, :cond_7

    .line 7268
    const v4, 0x7f0e037d

    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 7269
    const v4, 0x7f0e037e

    invoke-virtual {v1, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 7271
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 7272
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_0

    .line 7273
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 7274
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->findFocus()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0e0084

    invoke-virtual {v4, v5}, Landroid/view/View;->setNextFocusDownId(I)V

    goto/16 :goto_0

    .line 7275
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7276
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setNextFocusUpId(I)V

    goto/16 :goto_0
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 4149
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 4150
    .local v1, "imeShown":Z
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 4151
    .local v0, "flags":I
    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    if-eqz v1, :cond_2

    .line 4152
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 4156
    :goto_1
    if-eqz p4, :cond_3

    .line 4157
    or-int/lit8 v0, v0, 0x2

    .line 4162
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNavigationIconHints(I)V

    .line 4163
    return-void

    .line 4149
    .end local v0    # "flags":I
    .end local v1    # "imeShown":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4154
    .restart local v0    # "flags":I
    .restart local v1    # "imeShown":Z
    :cond_2
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 4159
    :cond_3
    and-int/lit8 v0, v0, -0x3

    goto :goto_2
.end method

.method public setInteracting(IZ)V
    .locals 2
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 4046
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    or-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    .line 4049
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    if-eqz v0, :cond_1

    .line 4050
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->suspendAutohide()V

    .line 4054
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 4055
    return-void

    .line 4046
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0

    .line 4052
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resumeSuspendedAutohide()V

    goto :goto_1
.end method

.method public setKeyguardFadingAway(JJ)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    const/4 v1, 0x1

    .line 5498
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    .line 5499
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    .line 5500
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    .line 5501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 5502
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 5503
    return-void
.end method

.method public setLightsOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x1

    .line 4099
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    if-eqz p1, :cond_0

    .line 4101
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    .line 4105
    :goto_0
    return-void

    .line 4103
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    goto :goto_0
.end method

.method public setMultiWindowBg(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 6981
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMultiWindowMode:Z

    .line 6982
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMultiWindowBg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMultiWindowMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMultiWindowMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6983
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 6984
    return-void
.end method

.method public setQsDetailviewLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x3ed

    .line 7070
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7071
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 7073
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7074
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 3376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setQsExpanded(Z)V

    .line 3377
    return-void
.end method

.method public setSystemUiVisibility(II)V
    .locals 15
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 3904
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3905
    .local v1, "oldVal":I
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, v1

    and-int v3, p1, p2

    or-int v2, v0, v3

    .line 3906
    .local v2, "newVal":I
    xor-int v7, v2, v1

    .line 3907
    .local v7, "diff":I
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBar"

    const-string v3, "setSystemUiVisibility vis=%s mask=%s oldVal=%s newVal=%s diff=%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    :cond_0
    if-eqz v7, :cond_c

    .line 3915
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, 0x4000

    if-lez v0, :cond_d

    const/4 v13, 0x1

    .line 3917
    .local v13, "wasRecentsVisible":Z
    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3920
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_2

    .line 3921
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    const/4 v8, 0x1

    .line 3922
    .local v8, "lightsOut":Z
    :goto_1
    if-eqz v8, :cond_1

    .line 3923
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 3924
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v0, :cond_1

    .line 3925
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 3929
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 3933
    .end local v8    # "lightsOut":Z
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    const/high16 v4, 0x4000000

    const/high16 v5, 0x40000000    # 2.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v11

    .line 3937
    .local v11, "sbMode":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_f

    const/4 v9, -0x1

    .line 3940
    .local v9, "nbMode":I
    :goto_2
    const/4 v0, -0x1

    if-eq v11, v0, :cond_10

    const/4 v12, 0x1

    .line 3941
    .local v12, "sbModeChanged":Z
    :goto_3
    const/4 v0, -0x1

    if-eq v9, v0, :cond_11

    const/4 v10, 0x1

    .line 3942
    .local v10, "nbModeChanged":Z
    :goto_4
    const/4 v6, 0x0

    .line 3943
    .local v6, "checkBarModes":Z
    if-eqz v12, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    if-eq v11, v0, :cond_3

    .line 3944
    iput v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    .line 3945
    const/4 v6, 0x1

    .line 3947
    :cond_3
    if-eqz v10, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    if-eq v9, v0, :cond_4

    .line 3948
    iput v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    .line 3949
    const/4 v6, 0x1

    .line 3951
    :cond_4
    if-eqz v6, :cond_5

    .line 3952
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3954
    :cond_5
    if-nez v12, :cond_6

    if-eqz v10, :cond_8

    .line 3956
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    .line 3957
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleAutohide()V

    .line 3964
    :cond_8
    :goto_5
    const/high16 v0, 0x10000000

    and-int v0, v0, p1

    if-eqz v0, :cond_9

    .line 3965
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v3, -0x10000001

    and-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3967
    :cond_9
    const/high16 v0, 0x20000000

    and-int v0, v0, p1

    if-eqz v0, :cond_a

    .line 3968
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v3, -0x20000001

    and-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3972
    :cond_a
    if-eqz v13, :cond_b

    .line 3973
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3977
    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 3979
    .end local v6    # "checkBarModes":Z
    .end local v9    # "nbMode":I
    .end local v10    # "nbModeChanged":Z
    .end local v11    # "sbMode":I
    .end local v12    # "sbModeChanged":Z
    .end local v13    # "wasRecentsVisible":Z
    :cond_c
    return-void

    .line 3915
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3921
    .restart local v13    # "wasRecentsVisible":Z
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 3937
    .restart local v11    # "sbMode":I
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    const/high16 v4, 0x8000000

    const/high16 v5, -0x80000000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v9

    goto :goto_2

    .line 3940
    .restart local v9    # "nbMode":I
    :cond_10
    const/4 v12, 0x0

    goto :goto_3

    .line 3941
    .restart local v12    # "sbModeChanged":Z
    :cond_11
    const/4 v10, 0x0

    goto :goto_4

    .line 3959
    .restart local v6    # "checkBarModes":Z
    .restart local v10    # "nbModeChanged":Z
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    goto :goto_5
.end method

.method public setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;
    .locals 1
    .param p1, "a"    # Landroid/animation/Animator;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "vis"    # I

    .prologue
    .line 3596
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3602
    return-object p1
.end method

.method public setVisibilityWhenDone(Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "a"    # Landroid/view/ViewPropertyAnimator;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "vis"    # I

    .prologue
    .line 3584
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 3591
    return-object p1
.end method

.method public setWindowState(II)V
    .locals 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3844
    if-nez p2, :cond_2

    move v0, v1

    .line 3845
    .local v0, "showing":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v3, :cond_0

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-eq v1, p2, :cond_0

    .line 3848
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 3850
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v1, :cond_0

    .line 3851
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3854
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    if-eq v1, p2, :cond_1

    .line 3857
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 3860
    :cond_1
    return-void

    .end local v0    # "showing":Z
    :cond_2
    move v0, v2

    .line 3844
    goto :goto_0
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1838
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setZenMode(I)V

    .line 1839
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v0, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->setZenMode(I)V

    .line 1842
    :cond_0
    return-void
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 2

    .prologue
    .line 5183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showClock(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 3090
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 3095
    :cond_0
    :goto_0
    return-void

    .line 3091
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0e0109

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3092
    .local v0, "clock":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3093
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public showKeyguard()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5379
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    if-eqz v0, :cond_1

    .line 5380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 5382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 5383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5385
    :cond_0
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 5386
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    .line 5388
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5389
    invoke-direct {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5390
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    if-nez v0, :cond_2

    .line 5395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 5397
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantExpandNotificationsPanel()V

    .line 5398
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_3

    .line 5400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 5401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 5402
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5405
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelRevealedByUser:Z

    .line 5406
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkHomeCitySettingsDialog(Z)V

    .line 5407
    return-void
.end method

.method showPlmnString()V
    .locals 4

    .prologue
    .line 6944
    const-string v1, "STATUSBAR-PhoneStatusBar"

    const-string v2, "showPlmnString"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6945
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAttCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6946
    const/4 v1, 0x1

    const/high16 v2, 0x10a0000

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 6948
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 6949
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 6950
    .local v0, "mPlmnHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$57;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6957
    .end local v0    # "mPlmnHandler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public showQsDetailviewPanel(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/16 v1, 0x3eb

    .line 7077
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSDetailviewType:I

    .line 7078
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7079
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 7081
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 7082
    return-void
.end method

.method protected showRecents(Z)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 6060
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 6061
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 6062
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->showRecents(Z)V

    .line 6063
    return-void
.end method

.method public showSearchPanel()V
    .locals 3

    .prologue
    .line 1892
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showSearchPanel()V

    .line 1893
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1896
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/SearchPanelView;->setSystemUiVisibility(I)V

    .line 1898
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1901
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1902
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1904
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public start(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 3616
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 3617
    return-object p1
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    .line 793
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    .line 797
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 799
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 804
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNavigationBar()V

    .line 807
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v1, "getSealedState"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v1, "getSealedStatusBarMode"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKnoxValueInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 810
    const-string v0, "PhoneStatusBar"

    const-string v1, "KnoxCustom: hiding status bar"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    .line 812
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarOn(Z)V

    .line 819
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVowifiController:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    .line 822
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CastController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 823
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 825
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "heads_up_notifications_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ticker_gets_heads_up"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 834
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 835
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startKeyguard()V

    .line 837
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    .line 838
    const-class v0, Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 839
    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 841
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setControllerUsers()V

    .line 843
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUserAboutHiddenNotifications()V

    .line 844
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z

    .prologue
    .line 3368
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 3369
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z

    .prologue
    .line 4509
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4551
    :goto_0
    return-void

    .line 4511
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    .line 4513
    .local v3, "afterKeyguardGone":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    .line 4514
    .local v2, "keyguardShowing":Z
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;

    move-object v1, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ZZLandroid/content/Intent;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isInstantDismiss()Z

    move-result v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    goto :goto_0
.end method

.method public startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;
    .locals 2
    .param p1, "d"    # I
    .param p2, "a"    # Landroid/animation/Animator;

    .prologue
    .line 3611
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 3612
    return-object p2
.end method

.method protected tick(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 4
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "firstTime"    # Z

    .prologue
    .line 4167
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTieckerEnabledByCover:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnablebyCocktailSettings:Z

    if-nez v1, :cond_1

    .line 4205
    :cond_0
    :goto_0
    return-void

    .line 4170
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4176
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4180
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 4181
    .local v0, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tick(): knoxCustomManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4182
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4187
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarHidden:Z

    if-nez v1, :cond_0

    .line 4198
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4200
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v2, 0xa0000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 4202
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/Ticker;->addEntry(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0
.end method

.method public toggleNotificationPanel()V
    .locals 2

    .prologue
    .line 3886
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x3e9

    .line 3887
    .local v0, "msg":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3888
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3889
    return-void

    .line 3886
    .end local v0    # "msg":I
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method protected toggleRecents()V
    .locals 1

    .prologue
    .line 6076
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    xor-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 6077
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 6078
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecents()V

    .line 6079
    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .param p1, "showMenu"    # Z

    .prologue
    .line 4135
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4136
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    const-string v0, "showing"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " the MENU button"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4138
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 4139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    .line 4143
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLightsOn(Z)V

    .line 4144
    :cond_2
    return-void

    .line 4136
    :cond_3
    const-string v0, "hiding"

    goto :goto_0
.end method

.method protected updateCarrierLabelVisibility(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 2728
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    if-nez v0, :cond_0

    .line 2780
    :cond_0
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4557
    if-nez p1, :cond_0

    .line 4558
    const-string v1, "CoverUI"

    const-string v2, "updateCoverState : CoverState == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4638
    :goto_0
    return-void

    .line 4562
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 4563
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 4564
    .local v0, "sViewCoverCovered":Z
    :goto_1
    const-string v3, "CoverUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCoverState - attached : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    const-string v3, "CoverUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCoverState - covered : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4568
    iget-boolean v3, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsShutingdown:Z

    if-eqz v3, :cond_4

    .line 4569
    :cond_1
    const/4 v0, 0x0

    .line 4570
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    .line 4571
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    .line 4572
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, v0}, Lcom/android/keyguard/ViewMediatorCallback;->setSViewCoverCovered(Z)V

    .line 4573
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverWindow()V

    .line 4626
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "sViewCoverCovered":Z
    :cond_3
    move v0, v2

    .line 4563
    goto :goto_1

    .line 4574
    .restart local v0    # "sViewCoverCovered":Z
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eq v0, v3, :cond_2

    .line 4575
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    .line 4576
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v3, v0}, Lcom/android/keyguard/ViewMediatorCallback;->setSViewCoverCovered(Z)V

    .line 4577
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverWindow()V

    .line 4580
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne v3, v1, :cond_2

    .line 4581
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v3, :cond_8

    .line 4582
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v3, :cond_7

    .line 4584
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTieckerEnabledByCover:Z

    .line 4585
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    if-eqz v1, :cond_5

    .line 4586
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 4587
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 4589
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 4620
    :cond_6
    :goto_3
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ticker:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTieckerEnabledByCover:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4603
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 4616
    :cond_8
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTieckerEnabledByCover:Z

    .line 4617
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    if-eqz v1, :cond_6

    .line 4618
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    goto :goto_3
.end method

.method updateDisplaySize()V
    .locals 2

    .prologue
    .line 4499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4505
    return-void
.end method

.method public updateExpandedViewPos(I)V
    .locals 4
    .param p1, "thingy"    # I

    .prologue
    .line 4487
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMinimumHeight(I)V

    .line 4490
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4491
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4492
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4494
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 4495
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 4
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 2140
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIcon slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " viewIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2143
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2144
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2145
    .restart local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 2146
    return-void
.end method

.method public updateKeyguardClockandNotifications(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 2641
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateKeyguardClockandNotifications( show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-eq v0, p1, :cond_0

    .line 2643
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateLockscreenNotificationSetting()V

    .line 2644
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 2646
    :cond_0
    return-void
.end method

.method public updateMediaMetaData(Z)V
    .locals 6
    .param p1, "metaDataChanged"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 2965
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    if-nez v3, :cond_0

    .line 3087
    :goto_0
    return-void

    .line 2974
    :cond_0
    const/4 v0, 0x0

    .line 2975
    .local v0, "artworkBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v3, :cond_1

    .line 2976
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v4, "android.media.metadata.ART"

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2977
    if-nez v0, :cond_1

    .line 2978
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v4, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2983
    :cond_1
    if-eqz v0, :cond_6

    move v1, v2

    .line 2985
    .local v1, "hasArtwork":Z
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v3, v2, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v3, v5, :cond_3

    .line 2986
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setLiveWallpaperBg(Landroid/graphics/Bitmap;)V

    .line 2989
    :cond_3
    if-nez v1, :cond_7

    .line 3046
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isMusicBackgroundSet()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3047
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->removeMusicWallpaper()V

    .line 3048
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->update()V

    .line 3049
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setLayerAndBitmapForParticleEffect()V

    .line 3085
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 3086
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    goto :goto_0

    .line 2983
    .end local v1    # "hasArtwork":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 2989
    .restart local v1    # "hasArtwork":Z
    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v3, v2, :cond_8

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v2, v5, :cond_4

    .line 2992
    :cond_8
    const-string v2, "PhoneStatusBar"

    const-string v3, "artworkBitmap != null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleUpdateKeyguardMusicBackground(Landroid/graphics/Bitmap;)V

    .line 2994
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setLayerAndBitmapForParticleEffect()V

    goto :goto_2
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 2271
    return-void
.end method

.method protected updateNotifications()V
    .locals 2

    .prologue
    .line 2620
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    if-nez v1, :cond_0

    .line 2638
    :goto_0
    return-void

    .line 2622
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 2624
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    .line 2625
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    .line 2626
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2627
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resizeNotificationRow()V

    .line 2631
    :cond_1
    const/4 v0, 0x0

    .line 2632
    .local v0, "show":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v1, :cond_2

    .line 2633
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsShowClockandNotifications()Z

    move-result v0

    .line 2635
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClock(Z)V

    .line 2637
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    goto :goto_0
.end method

.method public updateOverFlowView()V
    .locals 0

    .prologue
    .line 7320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 7321
    return-void
.end method

.method public updateQsPanelOnKeyguard(Z)V
    .locals 8
    .param p1, "singleline"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 6388
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v2, :cond_0

    .line 6389
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSPanel;->setSingleLine(Z)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    .line 6390
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    .line 6391
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    .line 6392
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    .line 6394
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 6395
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideMultiSIMLayout(Z)V

    .line 6400
    :cond_1
    if-eqz p1, :cond_b

    .line 6401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    .line 6407
    :cond_2
    const/4 v0, 0x0

    .line 6408
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    if-nez v2, :cond_c

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    :goto_0
    add-int/2addr v0, v2

    .line 6409
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    if-nez v2, :cond_5

    .line 6410
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsBrightnessView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessHeight:I

    add-int/2addr v0, v2

    .line 6411
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQsQConnectView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQConnectHeight:I

    add-int/2addr v0, v2

    .line 6413
    :cond_5
    const-string v2, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateQSpanelHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSpanelHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6414
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPeekHeight(I)V

    .line 6415
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v2, :cond_d

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpandHeight(ZI)V

    .line 6418
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 6419
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6420
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6422
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 6423
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6424
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6427
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    .line 6428
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6430
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 6431
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6433
    :cond_a
    return-void

    .line 6403
    .end local v0    # "height":I
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6404
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6403
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .restart local v0    # "height":I
    :cond_c
    move v2, v3

    .line 6408
    goto/16 :goto_0

    :cond_d
    move v2, v3

    .line 6415
    goto :goto_1
.end method

.method updateResources()V
    .locals 2

    .prologue
    .line 5018
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 5019
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 5022
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 5023
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 5026
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_1

    .line 5027
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateResources()V

    .line 5029
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_2

    .line 5030
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->updateResources()V

    .line 5032
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_3

    .line 5033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    .line 5036
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateTextResources()V

    .line 5037
    return-void
.end method

.method protected updateRowStates()V
    .locals 2

    .prologue
    .line 2715
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateRowStates()V

    .line 2716
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyVisibleChildrenChanged()V

    .line 2719
    const/4 v0, 0x0

    .line 2720
    .local v0, "show":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v1, :cond_0

    .line 2721
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsShowClockandNotifications()Z

    move-result v0

    .line 2723
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClock(Z)V

    .line 2724
    return-void
.end method

.method protected updateSearchPanel()V
    .locals 2

    .prologue
    .line 1884
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSearchPanel()V

    .line 1885
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDelegateView(Landroid/view/View;)V

    .line 1888
    :cond_0
    return-void
.end method

.method public updateStackScrollerState(Z)V
    .locals 6
    .param p1, "goingToFullShade"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5688
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v4, :cond_1

    .line 5702
    :cond_0
    :goto_0
    return-void

    .line 5689
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 5690
    .local v1, "onKeyguard":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHideSensitive(ZZ)V

    .line 5691
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5692
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v1, :cond_4

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandingEnabled(Z)V

    .line 5693
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 5694
    .local v0, "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->refreshAnimStatus()V

    .line 5695
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5696
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5697
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resizeNotificationRow()V

    .line 5699
    :cond_2
    if-eqz v0, :cond_0

    .line 5700
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_0

    .end local v0    # "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .end local v1    # "onKeyguard":Z
    :cond_3
    move v1, v3

    .line 5689
    goto :goto_1

    .restart local v1    # "onKeyguard":Z
    :cond_4
    move v2, v3

    .line 5692
    goto :goto_2
.end method

.method protected updateTextResources()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0e0206

    const v8, 0x7f0e0204

    const v7, 0x7f0d033f

    const v6, 0x7f0d033e

    .line 4908
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4910
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 4911
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    const v3, 0x7f0d01da

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4912
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearAll:Landroid/widget/TextView;

    const v3, 0x7f0d0299

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4915
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 4916
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    const v3, 0x7f0d01f3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4918
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 4919
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;

    const v3, 0x7f0d01f3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4923
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandSettingsButton:Landroid/widget/ImageView;

    const v3, 0x7f0d0268

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4924
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationButton:Landroid/widget/ImageView;

    const v3, 0x7f0d025b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4925
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingsButton:Landroid/widget/ImageView;

    const v3, 0x7f0d025a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4926
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsEditButton:Landroid/widget/ImageView;

    const v3, 0x7f0d042b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4928
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 4929
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4933
    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSFinderQConnectView:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    if-eqz v2, :cond_8

    .line 4934
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    const v3, 0x7f0e0201

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4935
    .local v0, "layout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_8

    .line 4936
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4938
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4940
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4942
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4947
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    :cond_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSFinderQConnectView:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_9

    .line 4948
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f0e0201

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4949
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_9

    .line 4950
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4952
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4954
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4956
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4961
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    :cond_9
    return-void
.end method

.method public userActivity()V
    .locals 2

    .prologue
    .line 5705
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5706
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 5708
    :cond_0
    return-void
.end method

.method public userSwitched(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    .line 4966
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 4967
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 4968
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 4969
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setControllerUsers()V

    .line 4972
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetBrightnessEnableObserver()V

    .line 4973
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetBatteryPercentageObserver()V

    .line 4974
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetEasyModeObserver()V

    .line 4977
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DoNotDisturb;->clear()V

    .line 4978
    new-instance v0, Lcom/android/systemui/statusbar/DoNotDisturb;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/DoNotDisturb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    .line 4979
    return-void
.end method

.method vibrate()V
    .locals 4

    .prologue
    .line 5151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 5153
    .local v0, "vib":Landroid/os/Vibrator;
    const-wide/16 v2, 0xfa

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 5154
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 5094
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisible:Z

    .line 5095
    if-eqz p1, :cond_0

    .line 5096
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startNotificationLoggingIfScreenOnAndVisible()V

    .line 5100
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 5101
    return-void

    .line 5098
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->stopNotificationLogging()V

    goto :goto_0
.end method

.method public wakeUpIfDozing(JZ)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "fromTouch"    # Z

    .prologue
    .line 6097
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6098
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 6099
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 6100
    if-eqz p3, :cond_0

    .line 6101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    .line 6104
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
