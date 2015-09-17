.class public Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;
.super Lcom/sec/android/cover/sviewcover/SViewCoverActivity;
.source "SViewCoverMissedEventActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$4;,
        Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverMissedEventActivity"


# instance fields
.field private mCloseButton:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

.field private mMissedEventView:Landroid/widget/RelativeLayout;

.field private mNotiList:Landroid/widget/ListView;

.field private mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

.field private mRootBackGroundView:Landroid/widget/ImageView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mCloseButton:Landroid/widget/ImageView;

    .line 43
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    .line 48
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Lcom/sec/android/cover/manager/CoverPowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;
    .param p1, "x1"    # Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->showCoverOpenPopup(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)Lcom/sec/android/cover/manager/CoverMissedEventManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    return-object v0
.end method

.method private setBackGroundImage()V
    .locals 4

    .prologue
    .line 235
    invoke-static {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v1

    .line 236
    .local v1, "wallpaperManager":Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    const/4 v0, 0x0

    .line 237
    .local v0, "wallpaper":I
    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v0

    .line 239
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->getWallpaperDrawble()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    return-void
.end method

.method private showCoverOpenPopup(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;)V
    .locals 5
    .param p1, "type"    # Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;

    .prologue
    .line 142
    const-string v2, "SViewCoverMissedEventActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showCoverOpenPopup() type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Lcom/sec/android/cover/widget/PopupFrameView;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/PopupFrameView;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, "openPopup":Lcom/sec/android/cover/widget/PopupFrameView;
    const/4 v1, 0x0

    .line 146
    .local v1, "popupText":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$4;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverMissedEventActivity$PopupType:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$PopupType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 160
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 165
    :cond_0
    :goto_1
    return-void

    .line 148
    :pswitch_0
    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_secured_popup:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    goto :goto_0

    .line 151
    :pswitch_1
    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_message:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    goto :goto_0

    .line 154
    :pswitch_2
    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_for_detail_call:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    goto :goto_0

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/sec/android/cover/widget/PopupFrameView;->show(Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    goto :goto_1

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected coverCloseEvent()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->coverCloseEvent()V

    .line 190
    return-void
.end method

.method protected coverOpenEvent()V
    .locals 4

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 196
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.skt.prod.dialer"

    const-string v3, "com.skt.prod.dialer.activities.main.MainActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    const-string v2, "INIT_MAIN_TYPE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string v2, "GOTO_ACTIVITY"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->finish()V

    .line 232
    return-void

    .line 206
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "SViewCoverMissedEventActivity"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .restart local v1    # "intent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 214
    :catch_1
    move-exception v0

    .line 215
    .restart local v0    # "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "SViewCoverMissedEventActivity"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v2, "fromScover"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 226
    :catch_2
    move-exception v0

    .line 227
    .restart local v0    # "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "SViewCoverMissedEventActivity"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 65
    sget v0, Lcom/sec/android/sviewcover/R$id;->noti_item_list:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mNotiList:Landroid/widget/ListView;

    .line 66
    sget v0, Lcom/sec/android/sviewcover/R$id;->missed_event_layout:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventView:Landroid/widget/RelativeLayout;

    .line 67
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missedevent_root_pattern:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    .line 70
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;

    .line 72
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mNotiList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventAdapter()Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mNotiList:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_event_close_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mCloseButton:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mCloseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-static {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget v0, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_missed_event_layout:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->setContentView(I)V

    .line 60
    iput-object p0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->init()V

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 178
    invoke-static {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 179
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onDestroy()V

    .line 180
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onPause()V

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->setBackGroundImage()V

    .line 170
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onResume()V

    .line 172
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->mMissedEventManager:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMissedEventActivity;->finish()V

    .line 174
    :cond_0
    return-void
.end method
