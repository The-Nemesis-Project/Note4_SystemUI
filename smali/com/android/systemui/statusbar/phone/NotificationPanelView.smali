.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
.implements Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;


# static fields
.field private static final ACTION_HOME_PAUSE:Ljava/lang/String; = "com.sec.android.intent.action.HOME_PAUSE"

.field private static final ACTION_HOME_RESUME:Ljava/lang/String; = "com.sec.android.intent.action.HOME_RESUME"

.field private static final CAP_HEIGHT:I = 0x5b0

.field private static final DOUBLETAP_TIMEOUT_MS:J = 0x4b0L

.field private static final DOZE_BACKGROUND_ANIM_DURATION:J = 0xdcL

.field private static final DOZE_BACKGROUND_COLOR:I = -0x1000000

.field private static final FONT_HEIGHT:I = 0x873

.field private static final HEADER_RUBBERBAND_FACTOR:F = 2.05f

.field private static final HEADER_RUBBERBAND_SINGLEMODE_FACTOR:F = 1.6f

.field private static final LOCK_ICON_ACTIVE_SCALE:F = 1.2f

.field private static final TAG_KEY_ANIM:I = 0x7f0e0077

.field private static sBroadcastReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private isRTLlanguage:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextTopPaddingChange:Z

.field private mBlockTouches:Z

.field private mBrightnessHeight:I

.field private mBrightnessView:Landroid/view/View;

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mCarrierLableStartPading:I

.field private mClearAll:Landroid/widget/TextView;

.field private mClearAllTouchDown:Z

.field private mClearAllVisible:Z

.field private mClearX:F

.field private mClearY:F

.field private mClockAnimationTarget:I

.field private mClockAnimator:Landroid/animation/ObjectAnimator;

.field private mClockView:Landroid/widget/TextView;

.field private mCocktailBarPresent:Z

.field private mConflictingQsExpansionGesture:Z

.field private mDisableTouchEvent:Z

.field private mDisableUpdateNotificationStack:Z

.field private mDispatchInitBouncerState:Z

.field private mDispatchInitState:I

.field private mDispatchInitX:F

.field private mDispatchInitY:F

.field mDisplay:Landroid/view/Display;

.field private mDozing:Z

.field private mEmergencyModeActivated:Z

.field private mEmptyDragAmount:F

.field private mExtraMargin:I

.field private mExtraOverlayedMargin:I

.field private mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHasNotification:Z

.field private mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

.field private mHeaderAnimatingIn:Z

.field private mHomeIntent:Landroid/content/Intent;

.field private mInitialHeightOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIntercepting:Z

.field private mIsDetailviewMode:Z

.field private mIsExpanding:Z

.field private mIsFirstExpanded:Z

.field private mIsFullyOpened:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private mIsQsonAnimating:Z

.field private mIsUpwardFling:Z

.field private mKeyguardBouncerContainer:Landroid/view/View;

.field private mKeyguardShowing:Z

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusView:Landroid/view/View;

.field private mKeyguardStatusViewAnimating:Z

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mLastAnnouncementWasQuickSettings:Z

.field private mLastAnnouncementforShade:Z

.field private mLastOverscroll:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field public mMascotClicked:Z

.field private mMascotHandler:Landroid/os/Handler;

.field private mMascotView:Landroid/widget/LinearLayout;

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mNotificationContainerParent:Landroid/view/View;

.field private mNotificationScrimWaitDistance:I

.field private mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNotificationTopPadding:I

.field private mNotificationsHeaderCollideDistance:I

.field private mOnlyAffordanceInThisMotion:Z

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mQConnectHeight:I

.field private mQConnectView:Landroid/view/View;

.field private mQSEditDivider:Landroid/view/View;

.field private mQsAnimatorExpand:Z

.field private mQsContainer:Landroid/view/View;

.field private mQsContainerAnimator:Landroid/animation/ObjectAnimator;

.field private final mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

.field private mQsDetailviewPanelHeight:I

.field private mQsDetailviewPanelType:I

.field private mQsExpanded:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field private mQsExpansionEnabled:Z

.field private mQsExpansionFromOverscroll:Z

.field private mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field private mQsFixedHeight:I

.field public mQsFullyExpanded:Z

.field private mQsHsView:Landroid/widget/HorizontalScrollView;

.field private mQsMaxExpansionHeight:I

.field private mQsMinExpansionHeight:I

.field private mQsNavbarScrim:Landroid/view/View;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsPeekHeight:I

.field private mQsPreviousFixedHeight:I

.field private mQsPreviousPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private mReserveNotificationSpace:Landroid/view/View;

.field private mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

.field private mScrollYOverride:I

.field private mSecAdaptiveEventContainer:Landroid/view/View;

.field private mSecClockHolder:Landroid/view/View;

.field private mSecKeyguardStatusView:Landroid/view/View;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mStatusBarMinHeight:I

.field private mStatusBarState:I

.field private final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTemp2:[I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTopPaddingAdjustment:I

.field private mTrackingPointer:I

.field private mTwoFingerQsExpand:Z

.field private mTwoFingerQsExpandPossible:Z

.field private mUnlockIconActive:Z

.field private mUnlockMoveDistance:I

.field private final mUpdateHeader:Ljava/lang/Runnable;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplay:Landroid/view/Display;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraMargin:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraOverlayedMargin:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLableStartPading:I

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mActivityManager:Landroid/app/ActivityManager;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQsonAnimating:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRemoteViews:Landroid/widget/RemoteViews;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitBouncerState:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateHeader:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouchEvent:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHomeIntent:Landroid/content/Intent;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-direct {v0, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelEndMagin()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainerAnimatorUpdater:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsQsonAnimating:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/ObservableScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    return p1
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLableStartPading:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    return-void
.end method

.method private animateHeaderSlidingIn()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private animateKeyguardStatusBarOut()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v1, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v3, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getScrollViewScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    float-to-int v3, v2

    return v3
.end method

.method private calculatePanelHeightShade()I
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    sub-int v1, v2, v3

    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    return v1
.end method

.method private calculateQsTopPadding()F
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    goto :goto_0
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private findMascotRemoteViews(FF)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isMascotEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c03e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c03e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardProperties;->useBigClockWithNoti(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecClockHolder:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x64

    add-int/lit8 v2, v5, 0x2d

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLocationOnScreen([I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    aget v5, v5, v4

    int-to-float v5, v5

    add-float/2addr p1, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    aget v5, v5, v3

    int-to-float v5, v5

    add-float/2addr p2, v5

    add-int v5, v2, v1

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_1

    add-int v5, v2, v1

    add-int/2addr v5, v0

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_1

    :goto_1
    return v3

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/lit8 v2, v5, 0x64

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method private findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTemp2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method private flingExpandsQs(F)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isBelowFalsingThreshold()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private flingQsWithCurrentVelocity()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentVelocity()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingExpandsQs(F)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    return-void
.end method

.method private flingSettings(FZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;)V

    return-void
.end method

.method private flingSettings(FZLjava/lang/Runnable;)V
    .locals 8

    const/4 v7, 0x1

    if-eqz p2, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v3, v4

    :goto_0
    move v2, p2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v4

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isBelowFalsingThreshold()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setBlockFlinging(Z)V

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    aput v6, v4, v5

    aput v3, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v4, v0, v5, v3, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    if-eqz v1, :cond_4

    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_4
    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;

    invoke-direct {v4, p0, p3, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    goto :goto_1
.end method

.method private static getBackgroundAlpha(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentVelocity()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getFalsingThreshold()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getHeaderExpansionFraction()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getHeaderTranslation()F
    .locals 4

    const v0, 0x40033333    # 2.05f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    div-float/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v2, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    div-float v0, v1, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-eqz v2, :cond_5

    const v0, 0x3fcccccd    # 1.6f

    :cond_5
    div-float v0, v1, v0

    goto :goto_0
.end method

.method private getKeyguardOrLockScreenString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0284

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0282

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNotificationsTopY()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationsTopY()F

    move-result v0

    goto :goto_0
.end method

.method private getQSDetailviewHeight(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c037c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getQsExpansionFraction()F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private getScrollViewScrollY()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v0

    goto :goto_0
.end method

.method private getTempQsMaxExpansion()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onExpandingFinished()V

    :cond_0
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private static interpolate(FFF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float v1, p0, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private isBelowFalsingThreshold()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurrentHomeActivity(Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isHome()Z
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v5, 0x1

    const/4 v6, 0x2

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    const/4 v1, 0x0

    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    iget-object v1, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCurrentHomeActivity(Landroid/content/ComponentName;)Z

    move-result v4

    :cond_1
    return v4

    :cond_2
    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method

.method private isInBouncerFrame(FF)Z
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    const v3, 0x7f0e00a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInEmergencyButtonBouncerFrame(FF)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    const v4, 0x7f0e00dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isInQsArea(FF)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInSettings()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method private onQsExpansionStarted()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    return-void
.end method

.method private onQsExpansionStarted(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, p1

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v1, v3, v3}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->scrollTo(II)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 12

    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v10, v6, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-eq v10, v6, :cond_2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    goto :goto_0

    :cond_2
    move v2, v9

    goto :goto_1

    :pswitch_3
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v1, v8, v10

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v10, v1

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFalsingThreshold()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v1, v10

    if-ltz v10, :cond_3

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-nez v9, :cond_4

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_6

    :cond_4
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v0, v9

    if-nez v9, :cond_5

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity()V

    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :cond_6
    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private positionClockAndNotifications()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isAddOrRemoveAnimationPending()Z

    move-result v0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    add-int v5, v6, v7

    :goto_0
    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIntrinsicPadding(I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    add-int v5, v6, v7

    goto :goto_0

    :cond_1
    const/16 v6, 0x64

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startClockAnimation(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/KeyguardProperties;->useBigClockWithNoti(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecClockHolder:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    add-int/lit8 v5, v6, 0x2d

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isMascotEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03e1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c03e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/KeyguardProperties;->useBigClockWithNoti(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecClockHolder:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, 0x64

    add-int/lit8 v7, v7, 0x2d

    add-int/2addr v7, v4

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setY(F)V

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/KeyguardProperties;->useBigClockWithNoti(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecClockHolder:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, 0x2d

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    add-int v5, v6, v2

    :cond_2
    :goto_4
    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    goto/16 :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/lit8 v5, v6, 0x64

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, 0x64

    add-int/2addr v7, v4

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setY(F)V

    goto :goto_3

    :cond_5
    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    add-int v5, v6, v2

    goto :goto_4
.end method

.method private registerReceiver()V
    .locals 5

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private requestScrollerTopPaddingUpdate(Z)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateQsTopPadding()F

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getScrollY()I

    move-result v4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateTopPadding(FIZ)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private resetDownStates(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    :cond_0
    return-void
.end method

.method private resizeQsPanelHeight(F)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    float-to-int v1, p1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFirstExpanded:Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFirstExpanded:Z

    goto :goto_0
.end method

.method private static setBackgroundColorAlpha(Landroid/view/View;IIZ)V
    .locals 9

    const v8, 0x7f0e0077

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getBackgroundAlpha(Landroid/view/View;)I

    move-result v2

    if-ne v2, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-virtual {p0, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_1

    check-cast v5, Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-nez p3, :cond_2

    invoke-static {p2, v4, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v7, 0x1

    aput p2, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;

    invoke-direct {v6, p0, v4, v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;-><init>(Landroid/view/View;III)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v6, 0xdc

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setKeyguardStatusViewVisibility(IZZ)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v0, v3, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    if-eqz p3, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    if-ne p1, v3, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_4
    if-ne p1, v3, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setListening(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    return-void
.end method

.method private setMarginOfBrightnessController(F)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    :cond_0
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method private setMarginOfQuickConnectLayout()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method private setMascotViewVisible(I)V
    .locals 2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, p1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isMascotEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x8

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPanelEndMagin()V
    .locals 12

    const/4 v9, 0x1

    const/4 v11, -0x1

    const/4 v8, 0x0

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCocktailBarPresent:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v10

    if-nez v10, :cond_1

    move v7, v8

    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v10

    if-nez v10, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraOverlayedMargin:I

    :goto_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v10}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v10

    if-ne v10, v9, :cond_3

    :goto_2
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isRTLlanguage:Z

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v5, v11, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f0042

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c02eb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v4, v6, v9, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    move v7, v9

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraMargin:I

    goto :goto_1

    :cond_3
    move v9, v8

    goto :goto_2

    :pswitch_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isRTLlanguage:Z

    if-eqz v9, :cond_4

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v9, v7}, Lcom/android/systemui/qs/QSPanel;->SetCocktailBarEnabled(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_5

    :pswitch_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isRTLlanguage:Z

    if-eqz v9, :cond_5

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    :goto_6
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v9, v7}, Lcom/android/systemui/qs/QSPanel;->SetCocktailBarEnabled(Z)V

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_6

    :pswitch_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v9, v7}, Lcom/android/systemui/qs/QSPanel;->SetCocktailBarEnabled(Z)V

    goto/16 :goto_3

    :pswitch_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isRTLlanguage:Z

    if-eqz v8, :cond_6

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_4

    :pswitch_4
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isRTLlanguage:Z

    if-eqz v8, :cond_7

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_4

    :pswitch_5
    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setQsExpanded(Z)V
    .locals 5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eq v3, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setInterceptDelegateEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setQsExpanded(Z)V

    :try_start_0
    const-string v3, "statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-interface {v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->setQuickSettingPanelExpandState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditDivider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private setQsExpansion(F)V
    .locals 6

    const v5, 0x7f0d0283

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-nez v3, :cond_6

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eq v3, v0, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-nez v3, :cond_7

    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateOverFlowView()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v3, v1, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToLockedShade(Landroid/view/View;)V

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v3, :cond_8

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    :cond_2
    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationScrim(F)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguard()V

    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    :cond_5
    :goto_3
    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v3, v2

    goto/16 :goto_1

    :cond_8
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    goto :goto_3
.end method

.method private setQsTranslation(F)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v2

    add-float v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v1

    int-to-float v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v1, :cond_3

    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v2, "header height is NaN : mQsContainer.setY => mHeader.getHeight()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setY(F)V

    :goto_1
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_7

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setY(F)V

    goto :goto_1
.end method

.method private shouldPanelIntercept(FF)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_3

    move v1, v2

    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v4, :cond_4

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v3, v1

    goto :goto_0
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_4

    move v1, v3

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_5

    move v2, v3

    :goto_3
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v5, :cond_6

    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isScrolledToBottom()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    cmpg-float v5, p3, v5

    if-gez v5, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move v4, v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_3

    :cond_6
    move v4, v1

    goto :goto_0
.end method

.method private shouldWidgetViewIntercept(FF)Z
    .locals 5

    const/4 v2, 0x0

    const v4, 0x7f0e0368

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const v4, 0x7f0e0369

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_2

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->onOutsideTouch()V

    :cond_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startClockAnimation(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private startHighlightIconAnimation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    return-void
.end method

.method private unregisterReceiver()V
    .locals 4

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationPanelView.unregisterReceiver(): exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateClock(FF)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private updateHeader()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguard()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderShade()V

    goto :goto_0
.end method

.method private updateHeaderShade()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeaderAnimatingIn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setTranslationY(F)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    return-void
.end method

.method private updateKeyguardStatusBarVisibility()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateNotificationScrim(F)V
    .locals 4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationScrimWaitDistance:I

    add-int v1, v2, v3

    int-to-float v2, v1

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float v0, v2, v3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return-void
.end method

.method private updateNotificationTranslucency()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getItemHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomStackPeekSize()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCollapseSecondCardPadding()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    const/4 v1, 0x0

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    cmpl-float v1, v0, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayerType()I

    move-result v1

    if-eq v1, v7, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v7, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    return-void

    :cond_1
    cmpl-float v1, v0, v6

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayerType()I

    move-result v1

    if-ne v1, v7, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private updateQsState()V
    .locals 6

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-eqz v3, :cond_6

    :cond_0
    move v0, v2

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v3, :cond_7

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v3, v2, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-eqz v3, :cond_8

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_a

    if-nez v0, :cond_a

    move v3, v4

    :goto_4
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setTouchEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz v5, :cond_b

    :goto_5
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hide(Z)V

    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v3, v4

    goto :goto_1

    :cond_8
    move v3, v1

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    goto :goto_3

    :cond_a
    move v3, v1

    goto :goto_4

    :cond_b
    move v1, v4

    goto :goto_5
.end method

.method private updateTextResources()V
    .locals 0

    return-void
.end method

.method private updateUnlockIcon()V
    .locals 0

    return-void
.end method


# virtual methods
.method public animateCloseQs()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    goto :goto_0
.end method

.method public animateToFullShade(J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->goToFullShade(J)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    return-void
.end method

.method public closeQs()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void
.end method

.method public closeQsDetail()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    return-void
.end method

.method public disableClockAndClear()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public disableTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouchEvent:Z

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v6

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitState:I

    if-eq v6, v9, :cond_0

    move v3, v2

    :goto_0
    return v3

    :cond_0
    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitState:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitBouncerState:Z

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v6

    if-ne v6, v7, :cond_7

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    sget-object v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mDispatchInitX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mDispatchInitY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v6, 0x2

    if-ne v0, v6, :cond_a

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v6

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v6, v9

    cmpl-float v6, v6, v11

    if-lez v6, :cond_a

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableUpdateNotificationStack:Z

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitBouncerState:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    sget-object v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInBouncerFrame = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInBouncerFrame(FF)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isInEmergencyButtonBouncerFrame = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInEmergencyButtonBouncerFrame(FF)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInBouncerFrame(FF)Z

    move-result v4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInEmergencyButtonBouncerFrame(FF)Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    if-eq v0, v7, :cond_4

    const/4 v6, 0x3

    if-ne v0, v6, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideBouncerFrame()Z

    :cond_5
    const/4 v2, 0x1

    :cond_6
    if-nez v2, :cond_b

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v6

    if-nez v6, :cond_b

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findMascotRemoteViews(FF)Z

    move-result v6

    if-nez v6, :cond_b

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldWidgetViewIntercept(FF)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v6, :cond_b

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v6

    if-nez v6, :cond_b

    const v6, 0x7f0e0368

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/WallpaperWidgetContainer;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v2, 0x1

    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    if-ne v0, v7, :cond_8

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setPressed(Z)V

    :cond_8
    if-nez v2, :cond_9

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_9
    move v3, v2

    goto/16 :goto_0

    :cond_a
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableUpdateNotificationStack:Z

    goto/16 :goto_1

    :cond_b
    if-nez v2, :cond_d

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v6

    if-nez v6, :cond_d

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findMascotRemoteViews(FF)Z

    move-result v6

    if-nez v6, :cond_d

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldPanelIntercept(FF)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v6, :cond_d

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_d
    if-nez v0, :cond_7

    sget-object v9, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!handled - "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v2, :cond_e

    move v6, v7

    :goto_3
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findNotificationView(mDispatchInitX, mDispatchInitY) == null - "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v6, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findNotificationView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v6

    if-nez v6, :cond_f

    move v6, v7

    :goto_4
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shouldPanelIntercept(mDispatchInitX, mDispatchInitY) - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldPanelIntercept(FF)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UnlockMethodCache.getInstance(mContext).isMethodInsecure() - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!mQsTracking - "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v6, :cond_10

    move v6, v7

    :goto_5
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!getClearAllview(mDispatchInitX, mDispatchInitY) - "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitX:F

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDispatchInitY:F

    invoke-virtual {p0, v6, v11}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v6

    if-nez v6, :cond_11

    move v6, v7

    :goto_6
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_e
    move v6, v8

    goto/16 :goto_3

    :cond_f
    move v6, v8

    goto/16 :goto_4

    :cond_10
    move v6, v8

    goto :goto_5

    :cond_11
    move v6, v8

    goto :goto_6
.end method

.method public enableClockAndClear()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public fling(FZ)V
    .locals 4

    const/4 v2, 0x1

    if-nez p2, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    const-string v1, "open"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    goto :goto_0

    :cond_4
    const-string v1, "closed"

    goto :goto_1
.end method

.method protected flingExpands(FF)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FF)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public flingSettings(FZI)V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-eqz v0, :cond_1

    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    if-eqz p2, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flingSettings mQsMin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQsMax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQsEx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mQsPeek:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getExpandedHeight()I

    move-result v0

    add-int/2addr v0, p3

    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v2

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_2
.end method

.method public flingTopOverscroll(FZ)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    move p1, v0

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fullyExpandedClearAllVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isDismissViewNotGone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getActivityManager()Landroid/app/ActivityManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mActivityManager:Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mActivityManager:Landroid/app/ActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAffordanceFalsingFactor()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getCannedFlingDurationFactor()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    const v0, 0x3f333333    # 0.7f

    :goto_0
    return v0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0
.end method

.method public getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClearAll()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getClearAllHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getDismissViewHeight()I

    move-result v0

    return v0
.end method

.method public getClearAllVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClearAllview(FF)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v6

    int-to-float v3, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBottom()I

    move-result v6

    int-to-float v0, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c02eb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int v2, v6, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0351

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v1, v2, v6

    cmpl-float v6, p2, v3

    if-ltz v6, :cond_0

    cmpg-float v6, p2, v0

    if-gtz v6, :cond_0

    int-to-float v6, v1

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_0

    int-to-float v6, v2

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setPressed(Z)V

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setPressed(Z)V

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method public getHeaderViewCollapsedHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method public getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMaxPanelHeight()I
    .locals 6

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v5

    add-float/2addr v4, v5

    const v5, 0x40033333    # 2.05f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v1, v4

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v4, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v5, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    :cond_2
    sub-int v0, v4, v3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSingleLine:Z

    if-nez v5, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    :cond_4
    sub-int v0, v4, v3

    goto :goto_0
.end method

.method protected getOverExpansionAmount()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method protected getOverExpansionPixels()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    return v0
.end method

.method public getPageWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected getPeekHeight()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasConflictingGestures()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantExpand()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->instantExpand()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    return-void
.end method

.method protected isBelowLastNotificationOrClear(F)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildYTranslation()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isClearAllVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isDismissViewVisible()Z

    move-result v0

    return v0
.end method

.method public isDozing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return v0
.end method

.method public isLaunchTransitionFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    return v0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    return v0
.end method

.method public isMascotAppRunning()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v3, "com.nttdocomo.android.mascot"

    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isMascotEnabled()Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShowHistoryCountAndMascot()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isMascotAppRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQsDetailShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    return v0
.end method

.method public isQsExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method protected isScrolledToBottom()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isScrolledToBottom()Z

    move-result v0

    goto :goto_0
.end method

.method protected isTrackingBlocked()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableUpdateNotificationStack:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDimens()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationTopPadding:I

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c035a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0303

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0304

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0305

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationScrimWaitDistance:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0358

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c037c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtraOverlayedMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLableStartPading:I

    return-void
.end method

.method public notifyVisibleChildrenChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mReserveNotificationSpace:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationToSideEnded()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onAnimationToSideStarted(Z)V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, p1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQSDetailviewHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelHeight:I

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQsDetailviewPanelHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    return-void
.end method

.method protected onEdgeClicked(Z)V
    .locals 0

    return-void
.end method

.method protected onExpandingFinished()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStopped()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollYOverride:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePanelState(Z)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected onExpandingStarted()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStarted()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    const v0, 0x7f0e037a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e012e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v0, 0x7f0e0136

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    const v0, 0x7f0e01f2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v1, 0x7f0e0209

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSEditDivider:Landroid/view/View;

    const v0, 0x7f0e01f3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0e01f4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    const v1, 0x7f0e01e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBrightnessView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    const v1, 0x7f0e0205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQConnectView:Landroid/view/View;

    const v0, 0x7f0e010e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockView:Landroid/widget/TextView;

    const v0, 0x7f0e0379

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    const v0, 0x7f0e01b0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setListener(Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setFocusable(Z)V

    const v0, 0x7f0e01b1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mReserveNotificationSpace:Landroid/view/View;

    const v0, 0x7f0e01af

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Landroid/view/View;

    const v0, 0x7f0e01b2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollView(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHsView(Landroid/widget/HorizontalScrollView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFastOutLinearInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x7f0e01b3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsNavbarScrim:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsContainer:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v0, 0x7f0e01ad

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    const v0, 0x7f0e0361

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Landroid/view/View;

    const v0, 0x7f0e0356

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecClockHolder:Landroid/view/View;

    const v0, 0x7f0e02fc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecAdaptiveEventContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/Feature;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCocktailBarPresent:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisplay:Landroid/view/Display;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDCMModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->unregisterReceiver()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->registerReceiver()V

    :cond_0
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    goto :goto_0
.end method

.method protected onHeightUpdated(F)V
    .locals 6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationTopPadding()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v0, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v3

    int-to-float v1, v3

    sub-float v3, p1, v0

    sub-float v4, v1, v0

    div-float v2, v3, v4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateUnlockIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-eqz v8, :cond_1

    move v7, v6

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetDownStates(Landroid/view/MotionEvent;)V

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v8, :cond_a

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    :pswitch_1
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    :goto_2
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v8

    if-eqz v8, :cond_6

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    goto :goto_1

    :cond_5
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    goto :goto_2

    :cond_6
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v8, v3, :cond_3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-eq v8, v3, :cond_7

    move v1, v6

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    goto :goto_1

    :cond_7
    move v1, v7

    goto :goto_3

    :pswitch_3
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v0, v5, v8

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v8, :cond_8

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v8, v0

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    goto/16 :goto_0

    :cond_8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-direct {p0, v8, v9, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v8, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity()V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    :cond_9
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setPressed(Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->performClick()Z

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isBelowLastNotificationOrClear(F)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_b
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v8, :cond_c

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_c
    move v7, v6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    const v2, 0x420a1600

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateIsSmallScreen(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelEndMagin()V

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->onMeasure(II)V

    return-void
.end method

.method public onOverscrollTopChanged(FZ)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    move v0, p1

    :goto_0
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    cmpl-float v1, v0, v4

    if-eqz v1, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public onOverscrolled(FFI)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    :cond_0
    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    :cond_0
    return-void
.end method

.method public onSwipingStarted()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->H_PROJECT:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->TPROJECT:Z

    if-eqz v3, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(ILandroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isHome()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const-string v2, "TAG"

    const-string v3, "The statusBar scroll is not work by multiwindow gesture."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->reset()V

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouchEvent:Z

    if-eqz v3, :cond_6

    :cond_5
    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T.E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDisableTouchEvent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetDownStates(Landroid/view/MotionEvent;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearY:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearX:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearY:F

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v3

    if-eqz v3, :cond_11

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v6, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v1, :cond_9

    :cond_8
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearX:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearY:F

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClearAllview(FF)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->performClick()Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setPressed(Z)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    if-eq v3, v1, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v3, :cond_a

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    :cond_a
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_b

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsDown(Landroid/view/MotionEvent;)V

    :cond_b
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v3, :cond_c

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsTouch(Landroid/view/MotionEvent;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v3, :cond_2

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v6, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v1, :cond_e

    :cond_d
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_f

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isEmergencyModeActivated()Z

    move-result v2

    if-nez v2, :cond_f

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_10

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    :cond_10
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    :cond_11
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllTouchDown:Z

    goto/16 :goto_1
.end method

.method protected onTrackingStarted()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePanelState(Z)V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    :cond_0
    return-void
.end method

.method public openQs()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelAnimation()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->isHandlingTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public resetViews()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockIconActive:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelEndMagin()V

    return-void
.end method

.method public setBarState(IZZ)V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eq p1, v2, :cond_0

    if-ne p1, v5, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setTranslationY(F)V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    if-eqz p3, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarOut()V

    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateHeaderSlidingIn()V

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v3, v2, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-nez v3, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementforShade:Z

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v1, v5, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementforShade:Z

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementforShade:Z

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_7

    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-nez v3, :cond_7

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    const/4 v3, 0x4

    goto :goto_2
.end method

.method public setCarrierView(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;

    return-void
.end method

.method public setDozing(Z)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, -0x1000000

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    invoke-static {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundColorAlpha(Landroid/view/View;IIZ)V

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardStatusBarVisibility()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackgroundColorAlpha(Landroid/view/View;IIZ)V

    goto :goto_1
.end method

.method public setEmergencyMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 2

    const v0, 0x3f4ccccd    # 0.8f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const v0, 0x3ecccccd    # 0.4f

    :cond_0
    :goto_0
    mul-float v1, p1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setMascotRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isMascotAppRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRemoteViews:Landroid/widget/RemoteViews;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected setOverExpansion(FZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpand:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    goto :goto_1
.end method

.method public setPeekHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    return-void
.end method

.method public setQSDetailviewMode(ZI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelType:I

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQSDetailviewHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelHeight:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPreviousPeekHeight:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPreviousFixedHeight:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsDetailviewPanelHeight:I

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpandHeight(ZI)V

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPreviousPeekHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPreviousFixedHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFixedHeight:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z

    goto :goto_0
.end method

.method public setQsExpandHeight(ZI)V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    if-eqz v0, :cond_2

    :cond_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQsHeight mQsMin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQsMax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQsEx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mQsPeek:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getExpandedHeight()I

    move-result v0

    add-int/2addr v0, p2

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v2

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public setQsExpansionEnabled(Z)V
    .locals 4

    move v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKidsModeActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kids"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKidsModeActivated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mQsExpansionEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClickable(Z)V

    return-void
.end method

.method public setQsScrimEnabled(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected startUnlockHintAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimation()V

    return-void
.end method

.method public updateCarrierLabelView()V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v7

    if-ne v7, v0, :cond_0

    move v4, v0

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    move v5, v0

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v7

    if-nez v7, :cond_2

    move v3, v0

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZZZLandroid/view/ViewGroup$MarginLayoutParams;)V

    const-wide/16 v8, 0x46

    invoke-virtual {v7, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    move v4, v1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2
.end method

.method public updateClearAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z

    return-void
.end method

.method public updateClock(Z)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasNotification()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is/are "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "notification(s) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->useBigClockWithNoti(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecAdaptiveEventContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "no"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecAdaptiveEventContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmergencyModeActivated:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateHeaderKeyguard()V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v2, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v1, v6, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBouncerContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    sub-float v3, v6, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsTranslation(F)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0
.end method

.method public updateMascotView()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isMascotEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMascotView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    goto :goto_0
.end method

.method protected updatePanelState(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateHeader:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScrollView:Lcom/android/systemui/statusbar/phone/ObservableScrollView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateTextResources()V

    return-void
.end method
