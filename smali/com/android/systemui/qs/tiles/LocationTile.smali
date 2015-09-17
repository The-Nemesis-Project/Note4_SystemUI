.class public Lcom/android/systemui/qs/tiles/LocationTile;
.super Lcom/android/systemui/qs/QSTile;
.source "LocationTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final CURRENT_MODE_KEY:Ljava/lang/String; = "CURRENT_MODE"

.field private static final MODE_CHANGING_ACTION:Ljava/lang/String; = "com.android.settings.location.MODE_CHANGING"

.field private static final NEW_MODE_KEY:Ljava/lang/String; = "NEW_MODE"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-LocationQuickSettingButton"

.field private static final VZW_GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "com.nim.vznavigator.app2app"

.field private static final VZW_GPS_INTENT_EXTRA:Ljava/lang/String; = "context"

.field private static final VZW_GPS_INTENT_EXTRA_VALUE:Ljava/lang/String; = "vznavigator:app2app?version=2.0&credential=0211&commands="

.field private static final VZW_PROVIDER:Ljava/lang/String; = "vzw_lbs"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDisabledByUserRestrictions:Z

.field private mGpsActivated:Z

.field private mIsPrefChecked:Z

.field private mListening:Z

.field private mPreviousGPSState:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mVzwGpsIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mVzwGpsIntent:Landroid/content/Intent;

    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/LocationTile$1;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nim.vznavigator.app2app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mVzwGpsIntent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile;->isGpsOn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v4, "location_providers_allowed"

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/android/systemui/qs/tiles/LocationTile$2;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile;->isGpsOn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isUserLocationRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIsPrefChecked:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIsPrefChecked:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/LocationTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->setGpsMode(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/LocationTile;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/LocationTile;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->isGpsOn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isUserLocationRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/LocationTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mPreviousGPSState:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private isGpsOn(I)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUserLocationRestricted()Z
    .locals 4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const-string v2, "no_share_location"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    return v2
.end method

.method private readLocationMode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setGpsMode(Z)V
    .locals 6

    const/4 v5, -0x2

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private setVzwProviderAndMode()V
    .locals 0

    return-void
.end method

.method private showConfirmPopup(Z)V
    .locals 13

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v9, 0x7f0400c6

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v9, 0x7f0e03c2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v9, 0x7f0e03be

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x7f0e03bf

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f0e03c0

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v9, 0x7f0e03c1

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIsPrefChecked:Z

    new-instance v9, Lcom/android/systemui/qs/tiles/LocationTile$9;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/qs/tiles/LocationTile$9;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-direct {v10, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v9, :cond_0

    const v9, 0x7f0d0437

    :goto_0
    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d0430

    new-instance v11, Lcom/android/systemui/qs/tiles/LocationTile$11;

    invoke-direct {v11, p0, v8}, Lcom/android/systemui/qs/tiles/LocationTile$11;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Z)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/systemui/qs/tiles/LocationTile$10;

    invoke-direct {v11, p0}, Lcom/android/systemui/qs/tiles/LocationTile$10;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/systemui/qs/tiles/LocationTile$12;

    invoke-direct {v10, p0}, Lcom/android/systemui/qs/tiles/LocationTile$12;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v9, :cond_1

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v9}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v10, "keyguard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    :goto_2
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v9, 0x7f0d042c

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private showDCMLocationConsentDialog()V
    .locals 7

    const/16 v6, 0x7d8

    const-string v3, "STATUSBAR-LocationQuickSettingButton"

    const-string v4, "showDCMLocationConsentDialog()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d04d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d04d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0430

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/tiles/LocationTile$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/LocationTile$8;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0431

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/tiles/LocationTile$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/LocationTile$7;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/LocationTile$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/LocationTile$6;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_3

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method protected handleClick()V
    .locals 15

    const/4 v14, 0x3

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v13, -0x1

    const/4 v12, -0x2

    const-string v10, "STATUSBAR-LocationQuickSettingButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleClick : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v6, v7, [Ljava/lang/String;

    const-string v8, "false"

    aput-object v8, v6, v9

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isSettingsChangesAllowed"

    invoke-static {v8, v10, v11, v6}, Lcom/android/systemui/qs/tiles/LocationTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/LocationPolicy"

    const-string v11, "isLocationProviderBlocked"

    invoke-static {v8, v10, v11, v6}, Lcom/android/systemui/qs/tiles/LocationTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v10, "content://com.sec.knox.provider/LocationPolicy"

    const-string v11, "isGPSStateChangeAllowed"

    invoke-static {v8, v10, v11}, Lcom/android/systemui/qs/tiles/LocationTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v4, v13, :cond_2

    if-eq v2, v13, :cond_2

    if-eq v3, v13, :cond_2

    if-eqz v4, :cond_0

    if-eq v2, v7, :cond_0

    if-nez v3, :cond_2

    :cond_0
    const-string v8, "STATUSBAR-LocationQuickSettingButton"

    const-string v9, "onClick(): Location state change is not allowed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v8, v14, :cond_1

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->isUserLocationRestricted()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDisabledByUserRestrictions:Z

    if-eqz v8, :cond_4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState(Ljava/lang/Object;)V

    const-string v8, "STATUSBAR-LocationQuickSettingButton"

    const-string v9, "onClick(): mDisabledByUserRestrictions..."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v7, v9

    goto :goto_1

    :cond_4
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v8, :cond_5

    invoke-direct {p0, v7}, Lcom/android/systemui/qs/tiles/LocationTile;->setGpsMode(Z)V

    goto :goto_0

    :cond_5
    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mGpsActivated:Z

    if-eq v7, v8, :cond_1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->readLocationMode()I

    move-result v0

    if-eqz v7, :cond_8

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v8}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    const-string v8, "DCM"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->showDCMLocationConsentDialog()V

    goto :goto_0

    :cond_6
    const/4 v5, 0x3

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "location_mode"

    invoke-static {v8, v9, v5, v12}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.settings.GPS_CHANGED"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mEnableNLPAlertForCHN:Z

    if-eqz v8, :cond_7

    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "CURRENT_MODE"

    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "NEW_MODE"

    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_7
    const-string v8, "STATUSBAR-LocationQuickSettingButton"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GPS set("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "location_mode"

    invoke-static {v8, v9, v5, v12}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    return-void
.end method

.method public handleLongClick()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/LocationPolicy"

    const-string v5, "isLocationProviderBlocked"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v1, v6, :cond_1

    if-eq v0, v6, :cond_1

    if-eqz v1, :cond_0

    if-ne v0, v7, :cond_1

    :cond_0
    const-string v3, "STATUSBAR-LocationQuickSettingButton"

    const-string v4, "onClick(): Location state change is not allowed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/LocationTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d035e

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d037f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f020626

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    const v1, 0x7f0d0356

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f020625

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    const v1, 0x7f0d0357

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f020624

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    const v1, 0x7f0d0358

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/LocationTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mListening:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mListening:Z

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public showVzwLocationConsentDialog()V
    .locals 0

    return-void
.end method
