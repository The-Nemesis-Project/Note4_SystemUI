.class public Lcom/android/systemui/recents/model/RecentsTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Recents_RecentsTaskLoader"

.field private static final TW_TAG:Ljava/lang/String; = "StautsBar-RecentsTaskLoader"

.field static sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;


# instance fields
.field mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

.field mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

.field mContext:Landroid/content/Context;

.field mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

.field mMaxIconCacheSize:I

.field mMaxThumbnailCacheSize:I

.field mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    const-string v0, "Recents_RecentsTaskLoader"

    const-string v1, "RecentsTaskLoader constructor is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContext:Landroid/content/Context;

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 310
    iget v7, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 312
    .local v7, "iconCacheSize":I
    iget v8, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 316
    .local v8, "thumbnailCacheSize":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 317
    .local v6, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v6, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 318
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 319
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 321
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 324
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 325
    new-instance v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    .line 326
    new-instance v0, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .line 327
    new-instance v0, Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-direct {v0, v7}, Lcom/android/systemui/recents/model/DrawableLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    .line 328
    new-instance v0, Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-direct {v0, v8}, Lcom/android/systemui/recents/model/BitmapLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    .line 329
    new-instance v0, Lcom/android/systemui/recents/model/StringLruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/StringLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    .line 330
    new-instance v0, Lcom/android/systemui/recents/model/TaskResourceLoader;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskResourceLoader;-><init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/DrawableLruCache;Lcom/android/systemui/recents/model/BitmapLruCache;Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    .line 332
    return-void
.end method

.method private getDefaultThumbnailByPrivateMode(I)Z
    .locals 9
    .param p1, "taskId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 739
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 741
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "personal_mode_enabled"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 743
    .local v3, "state":I
    if-ne v3, v4, :cond_0

    move v2, v4

    .line 745
    .local v2, "isPrivateModeState":Z
    :goto_0
    :try_start_0
    const-string v6, "Recents_RecentsTaskLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded bitmap for task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isPrivate? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getTaskTopIsSecretMode(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " PrivateSetting:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getTaskTopIsSecretMode(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 749
    const-string v6, "Recents_RecentsTaskLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded bitmap for task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": black thumbnail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_1
    return v4

    .end local v2    # "isPrivateModeState":Z
    :cond_0
    move v2, v5

    .line 743
    goto :goto_0

    .line 752
    .restart local v2    # "isPrivateModeState":Z
    :catch_0
    move-exception v1

    .line 753
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "Recents_RecentsTaskLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load Thumbnail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    move v4, v5

    .line 755
    goto :goto_1
.end method

.method public static getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .locals 1

    .prologue
    .line 344
    sget-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method private static getRecentTasks(Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)Ljava/util/List;
    .locals 4
    .param p0, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p1, "isTopTaskHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/misc/SystemServicesProxy;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 357
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->showMaxNumTasksToLoad:I

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZ)Ljava/util/List;

    move-result-object v1

    .line 360
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 361
    return-object v1
.end method

.method public static initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    sget-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 339
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method


# virtual methods
.method public deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "notifyTaskDataUnloaded"    # Z

    .prologue
    .line 670
    const-string v0, "Recents_RecentsTaskLoader"

    const-string v1, "deleteTaskData is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 672
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 673
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 674
    if-eqz p2, :cond_0

    .line 675
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 677
    :cond_0
    return-void
.end method

.method public getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/RecentsConfiguration;)I
    .locals 1
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p2, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    .line 468
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    .line 471
    :goto_0
    return v0

    :cond_0
    iget v0, p2, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    goto :goto_0
.end method

.method public getActivityTextPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/RecentsConfiguration;)I
    .locals 1
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p2, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    .line 478
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getTextPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getTextPrimaryColor()I

    move-result v0

    .line 481
    :goto_0
    return v0

    :cond_0
    iget v0, p2, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    goto :goto_0
.end method

.method public getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/android/systemui/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "infoHandle"    # Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .param p6, "preloadTask"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 370
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 400
    :goto_0
    return-object v7

    .line 376
    :cond_0
    if-eqz p6, :cond_3

    .line 379
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskResourceLoader;->getTaskDescriptionIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 381
    .local v7, "tdDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1, v7}, Lcom/android/systemui/recents/model/DrawableLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_2

    .line 388
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 391
    :cond_2
    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p5, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 393
    if-eqz v6, :cond_3

    .line 394
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1, v6}, Lcom/android/systemui/recents/model/DrawableLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    move-object v7, v6

    .line 395
    goto :goto_0

    .line 400
    .end local v7    # "tdDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/ActivityInfoHandle;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "infoHandle"    # Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .param p2, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p3, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;

    .prologue
    .line 433
    iget-object v0, p1, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p1, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 438
    :goto_0
    return-object v0

    .line 436
    :cond_0
    iget-object v0, p3, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 438
    iget-object v0, p1, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method

.method public getAndUpdateActivityLabel(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/ActivityInfoHandle;)Ljava/lang/String;
    .locals 4
    .param p1, "taskKey"    # Lcom/android/systemui/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p4, "infoHandle"    # Lcom/android/systemui/recents/model/ActivityInfoHandle;

    .prologue
    .line 408
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 428
    :cond_0
    :goto_0
    return-object v0

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/model/StringLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 413
    .local v0, "label":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 417
    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2

    .line 418
    iget-object v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 421
    :cond_2
    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_3

    .line 422
    iget-object v1, p4, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/recents/model/StringLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 425
    :cond_3
    const-string v1, "Recents_RecentsTaskLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing ActivityInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public getTaskStack(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;IIZZLjava/util/List;Ljava/util/List;)Lcom/android/systemui/recents/model/TaskStack;
    .locals 39
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "preloadTaskId"    # I
    .param p4, "preloadTaskCount"    # I
    .param p5, "loadTaskThumbnails"    # Z
    .param p6, "isTopTaskHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/misc/SystemServicesProxy;",
            "Landroid/content/res/Resources;",
            "IIZZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/model/TaskStack;"
        }
    .end annotation

    .prologue
    .line 508
    .local p7, "taskKeysOut":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    .local p8, "tasksToLoadOut":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    const-string v3, "Recents_RecentsTaskLoader"

    const-string v4, "getTaskStack is getting called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v28

    .line 510
    .local v28, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getRecentTasks(Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)Ljava/util/List;

    move-result-object v36

    .line 511
    .local v36, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 513
    .local v26, "activityInfoCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/systemui/recents/model/Task$ComponentNameKey;Lcom/android/systemui/recents/model/ActivityInfoHandle;>;"
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v37, "tasksToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v33, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct/range {v33 .. v33}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    .line 516
    .local v33, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v35

    .line 517
    .local v35, "taskCount":I
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_0
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_13

    .line 518
    move-object/from16 v0, v36

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 521
    .local v34, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v2, Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v34

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v34

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v34

    iget-wide v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, v34

    iget-wide v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(ILandroid/content/Intent;IJJ)V

    .line 525
    .local v2, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    iget-object v3, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/16 v32, 0x1

    .line 526
    .local v32, "isExclude":Z
    :goto_1
    if-eqz v32, :cond_1

    .line 527
    const-string v3, "Recents_RecentsTaskLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Don\'t load excludeFromRecents : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_2
    add-int/lit8 v30, v30, 0x1

    goto :goto_0

    .line 525
    .end local v32    # "isExclude":Z
    :cond_0
    const/16 v32, 0x0

    goto :goto_1

    .line 532
    .restart local v32    # "isExclude":Z
    :cond_1
    new-instance v31, Landroid/content/Intent;

    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 533
    .local v31, "intent":Landroid/content/Intent;
    invoke-virtual/range {v31 .. v31}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.setupwizard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 534
    const-string v3, "Recents_RecentsTaskLoader"

    const-string v4, "Don\'t load settupWizard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 539
    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    move-result-object v27

    .line 541
    .local v27, "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    const/16 v29, 0x0

    .line 542
    .local v29, "hasCachedActivityInfo":Z
    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 543
    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/ActivityInfoHandle;

    .line 544
    .local v8, "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    const/16 v29, 0x1

    .line 550
    :goto_3
    const/4 v9, 0x0

    .line 551
    .local v9, "preloadTask":Z
    if-lez p3, :cond_a

    .line 552
    move-object/from16 v0, v34

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move/from16 v0, p3

    if-ne v3, v0, :cond_9

    const/4 v9, 0x1

    .line 558
    :cond_3
    :goto_4
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1, v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityLabel(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/ActivityInfoHandle;)Ljava/lang/String;

    move-result-object v15

    .line 560
    .local v15, "activityLabel":Ljava/lang/String;
    move-object/from16 v0, v34

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/android/systemui/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 562
    .local v16, "activityIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/ActivityInfoHandle;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v24

    .line 563
    .local v24, "activityInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/RecentsConfiguration;)I

    move-result v17

    .line 565
    .local v17, "activityColor":I
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityTextPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/RecentsConfiguration;)I

    move-result v18

    .line 566
    .local v18, "activityTextColor":I
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v25

    .line 569
    .local v25, "isMultiWindowVisible":Z
    if-nez v29, :cond_4

    iget-object v3, v8, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_4

    .line 570
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :cond_4
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v3, :cond_c

    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v21

    .line 576
    .local v21, "icon":Landroid/graphics/Bitmap;
    :goto_5
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v3, :cond_d

    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v22

    .line 581
    .local v22, "iconFilename":Ljava/lang/String;
    :goto_6
    new-instance v10, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v34

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_e

    const/4 v12, 0x1

    :goto_7
    move-object/from16 v0, v34

    iget v13, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, v34

    iget v14, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    add-int/lit8 v3, v35, -0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_f

    const/16 v19, 0x1

    :goto_8
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    move-object v11, v2

    invoke-direct/range {v10 .. v25}, Lcom/android/systemui/recents/model/Task;-><init>(Lcom/android/systemui/recents/model/Task$TaskKey;ZIILjava/lang/String;Landroid/graphics/drawable/Drawable;IIZZLandroid/graphics/Bitmap;Ljava/lang/String;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/content/pm/ActivityInfo;Z)V

    .line 585
    .local v10, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v9, :cond_6

    if-eqz p5, :cond_6

    .line 586
    iget v3, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getDefaultThumbnailByPrivateMode(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 588
    iget v3, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 594
    :goto_9
    iget-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    .line 598
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v38

    .line 599
    .local v38, "versionInfo":Landroid/os/Bundle;
    const-string v3, "2.0"

    const-string v4, "version"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 600
    iget v3, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    const/16 v4, 0x64

    if-lt v3, v4, :cond_11

    iget v3, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_11

    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKnoxTaskThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 610
    :goto_a
    iget-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 611
    iget-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v4, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/recents/model/BitmapLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 615
    .end local v38    # "versionInfo":Landroid/os/Bundle;
    :cond_5
    iget-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_6

    if-eqz p8, :cond_6

    .line 618
    move-object/from16 v0, p8

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_6
    if-eqz p7, :cond_7

    .line 624
    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_7
    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    const-string v3, "StautsBar-RecentsTaskLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTaskStack id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " label:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 546
    .end local v8    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .end local v9    # "preloadTask":Z
    .end local v10    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v15    # "activityLabel":Ljava/lang/String;
    .end local v16    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .end local v17    # "activityColor":I
    .end local v18    # "activityTextColor":I
    .end local v21    # "icon":Landroid/graphics/Bitmap;
    .end local v22    # "iconFilename":Ljava/lang/String;
    .end local v24    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v25    # "isMultiWindowVisible":Z
    :cond_8
    new-instance v8, Lcom/android/systemui/recents/model/ActivityInfoHandle;

    invoke-direct {v8}, Lcom/android/systemui/recents/model/ActivityInfoHandle;-><init>()V

    .restart local v8    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    goto/16 :goto_3

    .line 552
    .restart local v9    # "preloadTask":Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 553
    :cond_a
    if-lez p4, :cond_3

    .line 554
    sub-int v3, v35, p4

    move/from16 v0, v30

    if-lt v0, v3, :cond_b

    const/4 v9, 0x1

    :goto_b
    goto/16 :goto_4

    :cond_b
    const/4 v9, 0x0

    goto :goto_b

    .line 573
    .restart local v15    # "activityLabel":Ljava/lang/String;
    .restart local v16    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "activityColor":I
    .restart local v18    # "activityTextColor":I
    .restart local v24    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v25    # "isMultiWindowVisible":Z
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 576
    .restart local v21    # "icon":Landroid/graphics/Bitmap;
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 581
    .restart local v22    # "iconFilename":Ljava/lang/String;
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 591
    .restart local v10    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    goto/16 :goto_9

    .line 603
    .restart local v38    # "versionInfo":Landroid/os/Bundle;
    :cond_11
    iget v3, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    goto/16 :goto_a

    .line 608
    :cond_12
    iget v3, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    goto/16 :goto_a

    .line 630
    .end local v2    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v8    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .end local v9    # "preloadTask":Z
    .end local v10    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v15    # "activityLabel":Ljava/lang/String;
    .end local v16    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .end local v17    # "activityColor":I
    .end local v18    # "activityTextColor":I
    .end local v21    # "icon":Landroid/graphics/Bitmap;
    .end local v22    # "iconFilename":Ljava/lang/String;
    .end local v24    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v25    # "isMultiWindowVisible":Z
    .end local v27    # "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    .end local v29    # "hasCachedActivityInfo":Z
    .end local v31    # "intent":Landroid/content/Intent;
    .end local v32    # "isExclude":Z
    .end local v34    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v38    # "versionInfo":Landroid/os/Bundle;
    :cond_13
    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Ljava/util/List;)V

    .line 631
    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->createAffiliatedGroupings(Lcom/android/systemui/recents/RecentsConfiguration;)V

    .line 632
    return-object v33
.end method

.method public isSupportMultiWindow(Landroid/content/pm/ActivityInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    .line 444
    .local v0, "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v1

    .line 447
    :cond_1
    if-eqz p2, :cond_2

    .line 448
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    const/high16 v2, 0x200000

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 454
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 5
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 637
    const-string v3, "Recents_RecentsTaskLoader"

    const-string v4, "loadTaskData is getting called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 640
    .local v0, "applicationIcon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getDefaultThumbnailByPrivateMode(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 642
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    if-eqz v3, :cond_3

    .line 643
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 653
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_0

    if-nez v2, :cond_5

    :cond_0
    const/4 v1, 0x1

    .line 654
    .local v1, "requiresLoad":Z
    :goto_1
    if-eqz v0, :cond_6

    .line 655
    :goto_2
    if-eqz v1, :cond_1

    .line 656
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V

    .line 658
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 659
    return-void

    .line 645
    .end local v1    # "requiresLoad":Z
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .restart local v2    # "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 649
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .restart local v2    # "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 653
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 654
    .restart local v1    # "requiresLoad":Z
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x6

    .line 701
    sparse-switch p1, :sswitch_data_0

    .line 735
    :goto_0
    return-void

    .line 704
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 705
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    .line 715
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    .line 716
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    .line 721
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/BitmapLruCache;->trimToSize(I)V

    .line 722
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    iget v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    .line 727
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/recents/model/BitmapLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/BitmapLruCache;->evictAll()V

    .line 728
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui/recents/model/DrawableLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/DrawableLruCache;->evictAll()V

    .line 730
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/recents/model/StringLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/StringLruCache;->evictAll()V

    goto :goto_0

    .line 701
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x14 -> :sswitch_0
        0x28 -> :sswitch_1
        0x3c -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method public registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 689
    return-void
.end method

.method public reload(Landroid/content/Context;IZ)Lcom/android/systemui/recents/model/SpaceNode;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preloadCount"    # I
    .param p3, "isTopTaskHome"    # Z

    .prologue
    .line 486
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v7, "taskKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v8, "tasksToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getTaskStack(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;IIZZLjava/util/List;Ljava/util/List;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v10

    .line 490
    .local v10, "stack":Lcom/android/systemui/recents/model/TaskStack;
    new-instance v9, Lcom/android/systemui/recents/model/SpaceNode;

    invoke-direct {v9}, Lcom/android/systemui/recents/model/SpaceNode;-><init>()V

    .line 491
    .local v9, "root":Lcom/android/systemui/recents/model/SpaceNode;
    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/model/SpaceNode;->setStack(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 494
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoader;->start(Landroid/content/Context;)V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTasks(Ljava/util/Collection;)V

    .line 498
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->setTasks(Ljava/util/List;)V

    .line 500
    return-object v9
.end method

.method stopLoader()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/recents/model/TaskResourceLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoader;->stop()V

    .line 682
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->clearTasks()V

    .line 683
    return-void
.end method

.method public unloadTaskData(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 663
    const-string v0, "Recents_RecentsTaskLoader"

    const-string v1, "unloadTaskData is getting called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 665
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 666
    return-void
.end method

.method public unregisterReceivers()V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->unregister()V

    .line 694
    return-void
.end method
