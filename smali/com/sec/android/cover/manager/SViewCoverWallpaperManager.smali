.class public Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
.super Ljava/lang/Object;
.source "SViewCoverWallpaperManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# instance fields
.field private final PRELOAD_WALLPAPER_ID:[I

.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;

.field private mRootFilesDir:Ljava/io/File;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mUserWallpaperImageFilesDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 41
    new-instance v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;-><init>(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 60
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    const-string v1, "create SViewCoverWallpaperManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mRootFilesDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mRootFilesDir:Ljava/io/File;

    .line 67
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mRootFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 68
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mRootFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 69
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mRootFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 72
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mRootFilesDir:Ljava/io/File;

    const-string v2, "wallpaper_images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    .line 73
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 75
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 76
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 77
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->checkAndCreateWallpaperFile()V

    .line 82
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$array;->s_view_cover_default_wallpaper_drawable_list:I

    invoke-static {v0, v1}, Lcom/sec/android/cover/CoverUtils;->getResourceArray(Landroid/content/Context;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    .line 84
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p1
.end method

.method private checkAndCreateWallpaperFile()V
    .locals 10

    .prologue
    .line 87
    sget-object v7, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v8, "checkAndCreateWallpaperFile()"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->moveUserWallpaperFile()V

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperFolderPath()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "imageDir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cover_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 95
    sget-object v7, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v8, "file is already existed"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/sec/android/sviewcover/R$drawable;->sviewcover_wallpaper:I

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 102
    .local v6, "walllpaperBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 104
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_2

    .line 106
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 107
    sget-object v7, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createWallpaperfolder to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 111
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 112
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    if-eqz v5, :cond_4

    .line 119
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 122
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 120
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 122
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-object v7, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveImageFile : File saving failed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    if-eqz v4, :cond_0

    .line 119
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 120
    :catch_2
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_3

    .line 119
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 122
    :cond_3
    :goto_3
    throw v7

    .line 120
    :catch_3
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 113
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_4
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    .line 56
    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    return-object v0
.end method

.method private moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 10
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, "inStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 219
    .local v5, "outStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .end local v2    # "inStream":Ljava/io/InputStream;
    .local v3, "inStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    .end local v5    # "outStream":Ljava/io/OutputStream;
    .local v6, "outStream":Ljava/io/OutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 226
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "length":I
    if-lez v4, :cond_2

    .line 228
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 238
    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "outStream":Ljava/io/OutputStream;
    .restart local v5    # "outStream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 239
    .end local v3    # "inStream":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    if-eqz v2, :cond_0

    .line 243
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 248
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 250
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 257
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return v7

    .line 233
    .end local v2    # "inStream":Ljava/io/InputStream;
    .end local v5    # "outStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v6    # "outStream":Ljava/io/OutputStream;
    :cond_2
    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 235
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "File is copied successful!"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 237
    const/4 v7, 0x1

    .line 241
    if-eqz v3, :cond_3

    .line 243
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 248
    :cond_3
    :goto_4
    if-eqz v6, :cond_4

    .line 250
    :try_start_8
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_4
    :goto_5
    move-object v5, v6

    .end local v6    # "outStream":Ljava/io/OutputStream;
    .restart local v5    # "outStream":Ljava/io/OutputStream;
    move-object v2, v3

    .line 253
    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    goto :goto_3

    .line 244
    .end local v2    # "inStream":Ljava/io/InputStream;
    .end local v5    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "outStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 245
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 252
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 244
    .end local v0    # "buffer":[B
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v6    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "outStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    .line 245
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 251
    :catch_4
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 241
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v2, :cond_5

    .line 243
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 248
    :cond_5
    :goto_7
    if-eqz v5, :cond_6

    .line 250
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 253
    :cond_6
    :goto_8
    throw v7

    .line 244
    :catch_5
    move-exception v1

    .line 245
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 252
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 241
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    goto :goto_6

    .end local v2    # "inStream":Ljava/io/InputStream;
    .end local v5    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "outStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "outStream":Ljava/io/OutputStream;
    .restart local v5    # "outStream":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    goto :goto_6

    .line 238
    :catch_7
    move-exception v1

    goto :goto_1

    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private moveUserWallpaperFile()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 147
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "moveUserWallpaperFile()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v5

    const-string v6, "sview_bg_wallpaper_path"

    invoke-virtual {v5, v6}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "imageDir":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    if-nez v5, :cond_2

    .line 154
    :cond_0
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "Dir path is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_3

    .line 159
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "Dir path are same"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cover_wallpaper.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, "sourceFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cover_wallpaper.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-ne v5, v8, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 168
    invoke-direct {p0, v3, v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    .line 170
    .local v4, "success":Z
    if-ne v4, v8, :cond_5

    .line 171
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 172
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 173
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 175
    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v5

    const-string v6, "sview_bg_wallpaper_path"

    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "user wallpaper file moving is completed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    .end local v0    # "destFile":Ljava/io/File;
    .end local v3    # "sourceFile":Ljava/io/File;
    .end local v4    # "success":Z
    :cond_4
    :goto_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cover_index_wallpaper.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v3    # "sourceFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cover_index_wallpaper.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .restart local v0    # "destFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-ne v5, v8, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 193
    invoke-direct {p0, v3, v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    .line 195
    .restart local v4    # "success":Z
    if-ne v4, v8, :cond_6

    .line 196
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 197
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 198
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 200
    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v5

    const-string v6, "sview_bg_wallpaper_path"

    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "user wallpaper file moving is completed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 209
    .end local v0    # "destFile":Ljava/io/File;
    .end local v3    # "sourceFile":Ljava/io/File;
    .end local v4    # "success":Z
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 181
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "destFile":Ljava/io/File;
    .restart local v3    # "sourceFile":Ljava/io/File;
    .restart local v4    # "success":Z
    :cond_5
    :try_start_2
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "moveUserWallpaperFile failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 184
    .end local v0    # "destFile":Ljava/io/File;
    .end local v3    # "sourceFile":Ljava/io/File;
    .end local v4    # "success":Z
    :catch_1
    move-exception v1

    .line 185
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 206
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "destFile":Ljava/io/File;
    .restart local v3    # "sourceFile":Ljava/io/File;
    .restart local v4    # "success":Z
    :cond_6
    :try_start_3
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "moveUserWallpaperFile failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 377
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    sget-object v2, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "getWallpaperDrawble : Emergency mode enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->black_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    .line 382
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 383
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 386
    :cond_1
    const/4 v0, 0x0

    .line 387
    .local v0, "drawableWallpaper":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v2

    add-int/lit8 v1, v2, -0xa

    .line 388
    .local v1, "wallpaperIndex":I
    sget-object v2, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB wallpaperindex :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->isCustomWallpaperEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 391
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCustomWallpaperDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 397
    :goto_1
    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCurrentWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 393
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperResId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getCustomWallpaperDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "isThumbnail"    # Z

    .prologue
    const/4 v8, 0x0

    .line 402
    iget-object v9, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 403
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCustomWallpaperFilePathName()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 409
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x0

    .line 410
    .local v7, "screenWidth":I
    const/4 v6, 0x0

    .line 411
    .local v6, "screenHeight":I
    if-eqz p1, :cond_0

    .line 412
    sget v9, Lcom/sec/android/sviewcover/R$dimen;->wallpaper_item_width:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v7, v9

    .line 413
    sget v9, Lcom/sec/android/sviewcover/R$dimen;->wallpaper_item_height:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    .line 419
    :goto_0
    invoke-static {v3, v7, v6}, Lcom/sec/android/cover/CoverUtils;->getAppropriateSampleSize(Ljava/lang/String;II)I

    move-result v9

    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 422
    :try_start_0
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 423
    if-nez v0, :cond_1

    .line 436
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "screenHeight":I
    .end local v7    # "screenWidth":I
    :goto_1
    return-object v8

    .line 415
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "screenHeight":I
    .restart local v7    # "screenWidth":I
    :cond_0
    sget v9, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v7, v9

    .line 416
    sget v9, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_height:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    sget-object v9, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v10, "getUserWallpaper : OutOfMemoryError !!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 431
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 432
    .local v8, "wallpaper":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 434
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "screenHeight":I
    .end local v7    # "screenWidth":I
    .end local v8    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v9, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v10, "Custom wallpaper file not extist!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCustomWallpaperFilePathName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 282
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "sview_bg_wallpaper_path"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "imageDir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cover_wallpaper.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "pathName":Ljava/lang/String;
    return-object v1
.end method

.method public getPreloadWallpaperFilePathName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 289
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "sview_bg_wallpaper_path"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "imageDir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cover_index_wallpaper.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "pathName":Ljava/lang/String;
    return-object v1
.end method

.method public getPreloadWallpaperResId(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 441
    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "PRELOAD_WALLPAPER is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->wallpaper_default_01:I

    .line 451
    :goto_0
    return v0

    .line 445
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    array-length v0, v0

    if-lt p1, v0, :cond_3

    .line 446
    :cond_2
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid preload wallpaper index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    .line 451
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getWallpaperFolderPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "imageDir":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUserWallpaperImageFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    sget-object v1, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomWallpaperFolderPath() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-object v0

    .line 135
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "wallpaper_images"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWallpaperIndex()I
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v0

    const-string v1, "sview_color_wallpaper"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWallpaperIndexbySkincolor()I
    .locals 5

    .prologue
    .line 347
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v0

    .line 348
    .local v0, "currenCoverColor":I
    sget-object v2, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cover skin color = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "mWallpaerIndex":I
    packed-switch v0, :pswitch_data_0

    .line 368
    :goto_0
    :pswitch_0
    return v1

    .line 354
    :pswitch_1
    const/4 v1, 0x0

    .line 355
    goto :goto_0

    .line 359
    :pswitch_2
    const/4 v1, 0x1

    .line 360
    goto :goto_0

    .line 362
    :pswitch_3
    const/4 v1, 0x7

    .line 363
    goto :goto_0

    .line 365
    :pswitch_4
    const/4 v1, 0x3

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isCustomWallpaperEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 277
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v0

    .line 278
    .local v0, "index":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWallpaperNeedToSetup(I)Z
    .locals 7
    .param p1, "newSkinColor"    # I

    .prologue
    const/4 v6, -0x1

    .line 261
    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "s_view_cover_skin_color"

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 262
    .local v1, "oldSkinColor":I
    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 264
    .local v0, "isChangedColor":Z
    :goto_0
    sget-object v3, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check new Cover old color : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new Color : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    if-nez v0, :cond_0

    .line 267
    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "sview_color_wallpaper"

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 269
    .local v2, "wallpaperIndex":I
    sget-object v3, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check saved wallpaper index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-ne v2, v6, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 273
    .end local v2    # "wallpaperIndex":I
    :cond_0
    return v0

    .line 262
    .end local v0    # "isChangedColor":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWallaper(II)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v9, 0x1

    .line 296
    if-ne p1, v9, :cond_3

    .line 297
    const/4 v4, 0x0

    .line 301
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperFilePathName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v2, "file":Ljava/io/File;
    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0, p2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperResId(I)I

    move-result v8

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 306
    .local v6, "walllpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_0

    .line 308
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 311
    :cond_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 312
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 313
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 318
    if-eqz v5, :cond_4

    .line 320
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 327
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v7

    const-string v8, "sview_color_wallpaper"

    add-int/lit8 v9, p2, 0xa

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    .line 336
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_1
    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v7}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v0

    .line 337
    .local v0, "currentCoverColor":I
    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v7

    const-string v8, "s_view_cover_skin_color"

    invoke-virtual {v7, v8, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    .line 340
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "wallpaperType"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    return-void

    .line 321
    .end local v0    # "currentCoverColor":I
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 323
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 314
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-object v7, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveImageFile : File saving failed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    if-eqz v4, :cond_1

    .line 320
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 321
    :catch_2
    move-exception v1

    .line 322
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 318
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_2

    .line 320
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 323
    :cond_2
    :goto_4
    throw v7

    .line 321
    :catch_3
    move-exception v1

    .line 322
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 332
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :cond_3
    iget-object v7, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v7

    const-string v8, "sview_color_wallpaper"

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 318
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 314
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_4
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
