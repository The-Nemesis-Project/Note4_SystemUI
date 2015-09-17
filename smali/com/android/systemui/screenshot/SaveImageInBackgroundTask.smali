.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final EASY_MODE:I = 0x0

.field private static final NORMAL_MODE:I = 0x1

.field private static final PHOTO_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.PhotoRetouching"

.field private static final PHOTO_EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_SHARE_SUBJECT_TEMPLATE:Ljava/lang/String; = "Screenshot (%s)"

.field private static final TAG:Ljava/lang/String; = "SaveImageInBackgroundTask"

.field private static mTickerAddSpace:Z


# instance fields
.field mAm:Landroid/app/IActivityManager;

.field mContext:Landroid/content/Context;

.field private mDegree:F

.field final mForegroundToken:Landroid/os/IBinder;

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private mIsBasedLandscape:Z

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private mScreenCaptureTime:Ljava/lang/String;

.field private mScreenCaptureType:I

.field private final mScreenshotDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .param p3, "nManager"    # Landroid/app/NotificationManager;
    .param p4, "nId"    # I

    .prologue
    .line 202
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 171
    new-instance v19, Landroid/os/Binder;

    invoke-direct/range {v19 .. v19}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    .line 172
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    .line 204
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 209
    .local v16, "r":Landroid/content/res/Resources;
    const-string v19, "ro.build.type"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "eng"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 210
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    .line 216
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v21

    const/16 v22, 0x1

    invoke-interface/range {v19 .. v22}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 217
    const-string v19, "SaveImageInBackgroundTask"

    const-string v20, "SaveImageInBackgroundTask setProcessForeground true"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 224
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 225
    .local v9, "imageDate":Ljava/lang/String;
    const-string v19, "Screenshot_%s.png"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 227
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    .line 230
    new-instance v19, Ljava/io/File;

    sget-object v20, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    const-string v21, "Screenshots"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 232
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 235
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->screenCaptureType:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureType:I

    .line 243
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 244
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 245
    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 247
    .local v8, "iconSize":I
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->isBasedLandscape:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    .line 248
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->degree:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    .line 251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v17, v0

    .line 252
    .local v17, "shortSide":I
    :goto_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    move/from16 v0, v17

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 253
    .local v15, "preview":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 254
    .local v5, "c":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 255
    .local v14, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/ColorMatrix;

    invoke-direct {v7}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 256
    .local v7, "desat":Landroid/graphics/ColorMatrix;
    const/high16 v19, 0x3e800000    # 0.25f

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 257
    new-instance v19, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 258
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 259
    .local v10, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v19, v0

    sub-int v19, v17, v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v20, v0

    sub-int v20, v17, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 261
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v10, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 262
    const v19, 0x40ffffff    # 7.9999995f

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 263
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 265
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v15, v8, v8, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 268
    .local v6, "croppedIcon":Landroid/graphics/Bitmap;
    sget-boolean v19, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-nez v19, :cond_3

    const/16 v19, 0x1

    :goto_3
    sput-boolean v19, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 269
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    .line 270
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 273
    .local v12, "now":J
    new-instance v20, Landroid/app/Notification$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v21, 0x7f0d0208

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v19, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v19, :cond_4

    const-string v19, " "

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f0d0209

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f0d020a

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f020342

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c037a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 284
    .local v4, "bigPictureHeight":I
    if-lez v4, :cond_0

    move/from16 v0, v17

    if-le v0, v4, :cond_0

    .line 285
    sub-int v19, v17, v4

    div-int/lit8 v18, v19, 0x2

    .line 286
    .local v18, "startY":I
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v15, v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 289
    .end local v18    # "startY":I
    :cond_0
    new-instance v19, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v19 .. v19}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 295
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v20, 0x7f0d0209

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f0d020a

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f020342

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    const-string v20, "progress"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 305
    .local v11, "n":Landroid/app/Notification;
    iget v0, v11, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/NotificationManager;->cancel(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 317
    return-void

    .line 212
    .end local v4    # "bigPictureHeight":I
    .end local v5    # "c":Landroid/graphics/Canvas;
    .end local v6    # "croppedIcon":Landroid/graphics/Bitmap;
    .end local v7    # "desat":Landroid/graphics/ColorMatrix;
    .end local v8    # "iconSize":I
    .end local v9    # "imageDate":Ljava/lang/String;
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "n":Landroid/app/Notification;
    .end local v12    # "now":J
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v15    # "preview":Landroid/graphics/Bitmap;
    .end local v17    # "shortSide":I
    :cond_1
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    goto/16 :goto_0

    .line 251
    .restart local v8    # "iconSize":I
    .restart local v9    # "imageDate":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v17, v0

    goto/16 :goto_2

    .line 268
    .restart local v5    # "c":Landroid/graphics/Canvas;
    .restart local v6    # "croppedIcon":Landroid/graphics/Bitmap;
    .restart local v7    # "desat":Landroid/graphics/ColorMatrix;
    .restart local v10    # "matrix":Landroid/graphics/Matrix;
    .restart local v14    # "paint":Landroid/graphics/Paint;
    .restart local v15    # "preview":Landroid/graphics/Bitmap;
    .restart local v17    # "shortSide":I
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 273
    .restart local v12    # "now":J
    :cond_4
    const-string v19, ""

    goto/16 :goto_4

    .line 218
    .end local v5    # "c":Landroid/graphics/Canvas;
    .end local v6    # "croppedIcon":Landroid/graphics/Bitmap;
    .end local v7    # "desat":Landroid/graphics/ColorMatrix;
    .end local v8    # "iconSize":I
    .end local v9    # "imageDate":Ljava/lang/String;
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "now":J
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v15    # "preview":Landroid/graphics/Bitmap;
    .end local v17    # "shortSide":I
    :catch_0
    move-exception v19

    goto/16 :goto_1
.end method

.method private broadcastForLoggingApp(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 515
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenCaptureType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mImageFilePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenCpatureTime :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.scapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    iget v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string v1, "path"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v1, "time"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 522
    return-void
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 650
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 652
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 653
    const/4 v2, 0x1

    .line 658
    :cond_0
    :goto_0
    return v2

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isEasyModeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 509
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 35
    .param p1, "params"    # [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .prologue
    .line 322
    const-string v30, "SaveImageInBackgroundTask"

    const-string v31, "SaveImageInBackgroundTask setProcessForeground doInBackground"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v30, 0x0

    .line 504
    :goto_0
    return-object v30

    .line 325
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 328
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    move-object/from16 v31, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v32

    const/16 v33, 0x0

    invoke-interface/range {v30 .. v33}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 329
    const-string v30, "SaveImageInBackgroundTask"

    const-string v31, "SaveImageInBackgroundTask doInBackground isCancelled setProcessForeground false"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    .line 333
    :goto_1
    const/16 v30, 0x0

    aget-object v30, p1, v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 334
    const/16 v30, 0x0

    aget-object v30, p1, v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 335
    const/16 v30, 0x0

    goto :goto_0

    .line 340
    :cond_1
    const/16 v30, -0x2

    invoke-static/range {v30 .. v30}, Landroid/os/Process;->setThreadPriority(I)V

    .line 342
    const/16 v30, 0x0

    aget-object v30, p1, v30

    move-object/from16 v0, v30

    iget-object v7, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 343
    .local v7, "context":Landroid/content/Context;
    const/16 v30, 0x0

    aget-object v30, p1, v30

    move-object/from16 v0, v30

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 344
    .local v14, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 346
    .local v21, "r":Landroid/content/res/Resources;
    const/16 v16, 0x0

    .line 347
    .local v16, "imageFile":Ljava/io/File;
    const/16 v19, 0x0

    .line 352
    .local v19, "out":Ljava/io/OutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->mkdirs()Z

    .line 356
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    div-long v10, v30, v32

    .line 358
    .local v10, "dateSeconds":J
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    .end local v16    # "imageFile":Ljava/io/File;
    .local v17, "imageFile":Ljava/io/File;
    :try_start_2
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 360
    .end local v19    # "out":Ljava/io/OutputStream;
    .local v20, "out":Ljava/io/OutputStream;
    if-eqz v14, :cond_9

    const/16 v30, 0x1

    :try_start_3
    sget-object v31, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v32, 0x64

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 361
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    .line 362
    const-string v30, "SaveImageInBackgroundTask"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "image.getByteCount() : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .local v29, "values":Landroid/content/ContentValues;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 366
    .local v22, "resolver":Landroid/content/ContentResolver;
    const-string v30, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v30, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v30, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v30, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 370
    const-string v30, "date_added"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    const-string v30, "date_modified"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 372
    const-string v30, "mime_type"

    const-string v31, "image/png"

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v30, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string v30, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    const-string v30, "_size"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 376
    sget-object v30, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v27

    .line 379
    .local v27, "uri":Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v30, "android.intent.action.DELETE"

    move-object/from16 v0, v30

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v9, "deleteIntent":Landroid/content/Intent;
    const-string v30, "FilePath"

    const-string v31, "%s/%s/%s"

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    sget-object v34, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v34 .. v34}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    const-string v34, "Screenshots"

    aput-object v34, v32, v33

    const/16 v33, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-class v30, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    move-object/from16 v0, v30

    invoke-virtual {v9, v7, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v30, v0

    const v31, 0x7f0205ba

    const v32, 0x1040464

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/high16 v34, 0x10000000

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v7, v0, v9, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v33

    invoke-virtual/range {v30 .. v33}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 390
    new-instance v6, Landroid/content/ComponentName;

    const-string v30, "com.sec.android.mimage.photoretouching"

    const-string v31, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .local v6, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v30

    if-eqz v30, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isEasyModeEnabled()Z

    move-result v30

    if-nez v30, :cond_2

    .line 393
    const-string v30, "%s/%s/"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    sget-object v33, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string v33, "Screenshots"

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 397
    .local v15, "imageDirPath":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-string v30, "android.intent.action.SEND"

    move-object/from16 v0, v30

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v13, "editIntent":Landroid/content/Intent;
    const-string v30, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v30, "DirPath"

    move-object/from16 v0, v30

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v30, "degree"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 401
    const-string v30, "isBasedLandscape"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    const-class v30, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    move-object/from16 v0, v30

    invoke-virtual {v13, v7, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 403
    const v30, 0x10008000

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v30, v0

    const v31, 0x7f0205bb

    const v32, 0x1040722

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/high16 v34, 0x10000000

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v7, v0, v13, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v33

    invoke-virtual/range {v30 .. v33}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 411
    .end local v13    # "editIntent":Landroid/content/Intent;
    .end local v15    # "imageDirPath":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v30

    new-instance v31, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v32, v0

    invoke-direct/range {v31 .. v33}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v30 .. v31}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    .line 412
    .local v26, "subjectDate":Ljava/lang/String;
    sget-boolean v30, Lcom/android/systemui/statusbar/Feature;->mUseCHNFontType:Z

    if-eqz v30, :cond_3

    .line 413
    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 415
    new-instance v30, Ljava/text/SimpleDateFormat;

    const-string v31, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    invoke-direct/range {v30 .. v31}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v31, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v32, v0

    invoke-direct/range {v31 .. v33}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v30 .. v31}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    .line 422
    :cond_3
    :goto_2
    const-string v30, "Screenshot (%s)"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v26, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 423
    .local v25, "subject":Ljava/lang/String;
    new-instance v23, Landroid/content/Intent;

    const-string v30, "android.intent.action.SEND"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v23, "sharingIntent":Landroid/content/Intent;
    const-string v30, "image/png"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string v30, "android.intent.extra.STREAM"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 426
    const-string v30, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const v30, 0x7f0d0475

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 436
    .local v5, "chooserIntent":Landroid/content/Intent;
    const v30, 0x10008000

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 440
    new-instance v24, Landroid/content/Intent;

    const-string v30, "android.intent.action.SEND"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v24, "sharingNotiIntent":Landroid/content/Intent;
    const-class v30, Lcom/android/systemui/screenshot/ScreenshotShareActivity;

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 442
    const v30, 0x10008000

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 443
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v30, v0

    const v31, 0x7f0205bc

    const v32, 0x104056d

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/high16 v34, 0x10000000

    move/from16 v0, v33

    move-object/from16 v1, v24

    move/from16 v2, v34

    invoke-static {v7, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v33

    invoke-virtual/range {v30 .. v33}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 449
    const/16 v30, 0x0

    aget-object v30, p1, v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 450
    const/16 v30, 0x0

    aget-object v30, p1, v30

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 451
    const/16 v30, 0x0

    aget-object v30, p1, v30

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 454
    new-instance v8, Landroid/content/Intent;

    const-string v30, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_RECEIVER"

    move-object/from16 v0, v30

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v8, "copyIntent":Landroid/content/Intent;
    const-string v30, "copyPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v30, "noToast"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 459
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "file://"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 460
    .local v28, "uriString":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v30, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 462
    .local v4, "actionIntent":Landroid/content/Intent;
    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 465
    const-string v30, "sys.iss.state"

    const-string v31, "0"

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 466
    .local v18, "issState":Ljava/lang/String;
    const-string v30, "3rd"

    const-string v31, "ro.release.3rd_party"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x40

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_5

    .line 467
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->broadcastForLoggingApp(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 489
    .end local v4    # "actionIntent":Landroid/content/Intent;
    .end local v5    # "chooserIntent":Landroid/content/Intent;
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v8    # "copyIntent":Landroid/content/Intent;
    .end local v9    # "deleteIntent":Landroid/content/Intent;
    .end local v18    # "issState":Ljava/lang/String;
    .end local v22    # "resolver":Landroid/content/ContentResolver;
    .end local v23    # "sharingIntent":Landroid/content/Intent;
    .end local v24    # "sharingNotiIntent":Landroid/content/Intent;
    .end local v25    # "subject":Ljava/lang/String;
    .end local v26    # "subjectDate":Ljava/lang/String;
    .end local v27    # "uri":Landroid/net/Uri;
    .end local v28    # "uriString":Ljava/lang/String;
    .end local v29    # "values":Landroid/content/ContentValues;
    :cond_5
    :goto_3
    if-eqz v20, :cond_b

    .line 491
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .line 500
    .end local v10    # "dateSeconds":J
    .end local v17    # "imageFile":Ljava/io/File;
    .restart local v16    # "imageFile":Ljava/io/File;
    :cond_6
    :goto_4
    if-eqz v14, :cond_7

    .line 501
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 504
    :cond_7
    const/16 v30, 0x0

    aget-object v30, p1, v30

    goto/16 :goto_0

    .line 419
    .end local v16    # "imageFile":Ljava/io/File;
    .end local v19    # "out":Ljava/io/OutputStream;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    .restart local v9    # "deleteIntent":Landroid/content/Intent;
    .restart local v10    # "dateSeconds":J
    .restart local v17    # "imageFile":Ljava/io/File;
    .restart local v20    # "out":Ljava/io/OutputStream;
    .restart local v22    # "resolver":Landroid/content/ContentResolver;
    .restart local v26    # "subjectDate":Ljava/lang/String;
    .restart local v27    # "uri":Landroid/net/Uri;
    .restart local v29    # "values":Landroid/content/ContentValues;
    :cond_8
    :try_start_5
    new-instance v30, Ljava/text/SimpleDateFormat;

    const-string v31, "yyyy\u5e74MM\u6708dd\u65e5 aahh:mm:ss"

    invoke-direct/range {v30 .. v31}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v31, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v32, v0

    invoke-direct/range {v31 .. v33}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v30 .. v31}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_2

    .line 471
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v9    # "deleteIntent":Landroid/content/Intent;
    .end local v22    # "resolver":Landroid/content/ContentResolver;
    .end local v26    # "subjectDate":Ljava/lang/String;
    .end local v27    # "uri":Landroid/net/Uri;
    .end local v29    # "values":Landroid/content/ContentValues;
    :cond_9
    const-string v30, "SaveImageInBackgroundTask"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Fail to create capture image file ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/16 v30, 0x0

    aget-object v30, p1, v30

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 474
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_5

    .line 475
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 479
    :catch_0
    move-exception v12

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .line 483
    .end local v10    # "dateSeconds":J
    .end local v17    # "imageFile":Ljava/io/File;
    .local v12, "e":Ljava/lang/Exception;
    .restart local v16    # "imageFile":Ljava/io/File;
    :goto_5
    :try_start_6
    const-string v30, "SaveImageInBackgroundTask"

    const-string v31, "IOException-UnsupportedOperationException may be thrown if external storage is not"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/16 v30, 0x0

    aget-object v30, p1, v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 486
    const/16 v30, 0x0

    aget-object v30, p1, v30

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 489
    if-eqz v19, :cond_6

    .line 491
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 492
    :catch_1
    move-exception v12

    .line 493
    const-string v30, "SaveImageInBackgroundTask"

    const-string v31, "IOException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 492
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "imageFile":Ljava/io/File;
    .end local v19    # "out":Ljava/io/OutputStream;
    .restart local v10    # "dateSeconds":J
    .restart local v17    # "imageFile":Ljava/io/File;
    .restart local v20    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v12

    .line 493
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v30, "SaveImageInBackgroundTask"

    const-string v31, "IOException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .line 494
    .end local v17    # "imageFile":Ljava/io/File;
    .restart local v16    # "imageFile":Ljava/io/File;
    goto/16 :goto_4

    .line 489
    .end local v10    # "dateSeconds":J
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v30

    :goto_6
    if-eqz v19, :cond_a

    .line 491
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 494
    :cond_a
    :goto_7
    throw v30

    .line 492
    :catch_3
    move-exception v12

    .line 493
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v31, "SaveImageInBackgroundTask"

    const-string v32, "IOException"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 489
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "imageFile":Ljava/io/File;
    .restart local v10    # "dateSeconds":J
    .restart local v17    # "imageFile":Ljava/io/File;
    :catchall_1
    move-exception v30

    move-object/from16 v16, v17

    .end local v17    # "imageFile":Ljava/io/File;
    .restart local v16    # "imageFile":Ljava/io/File;
    goto :goto_6

    .end local v16    # "imageFile":Ljava/io/File;
    .end local v19    # "out":Ljava/io/OutputStream;
    .restart local v17    # "imageFile":Ljava/io/File;
    .restart local v20    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v30

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .end local v17    # "imageFile":Ljava/io/File;
    .restart local v16    # "imageFile":Ljava/io/File;
    goto :goto_6

    .line 479
    .end local v10    # "dateSeconds":J
    :catch_4
    move-exception v12

    goto :goto_5

    .end local v16    # "imageFile":Ljava/io/File;
    .restart local v10    # "dateSeconds":J
    .restart local v17    # "imageFile":Ljava/io/File;
    :catch_5
    move-exception v12

    move-object/from16 v16, v17

    .end local v17    # "imageFile":Ljava/io/File;
    .restart local v16    # "imageFile":Ljava/io/File;
    goto :goto_5

    .line 330
    .end local v7    # "context":Landroid/content/Context;
    .end local v10    # "dateSeconds":J
    .end local v14    # "image":Landroid/graphics/Bitmap;
    .end local v16    # "imageFile":Ljava/io/File;
    .end local v19    # "out":Ljava/io/OutputStream;
    .end local v21    # "r":Landroid/content/res/Resources;
    :catch_6
    move-exception v30

    goto/16 :goto_1

    .restart local v7    # "context":Landroid/content/Context;
    .restart local v10    # "dateSeconds":J
    .restart local v14    # "image":Landroid/graphics/Bitmap;
    .restart local v17    # "imageFile":Ljava/io/File;
    .restart local v20    # "out":Ljava/io/OutputStream;
    .restart local v21    # "r":Landroid/content/res/Resources;
    :cond_b
    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .end local v17    # "imageFile":Ljava/io/File;
    .restart local v16    # "imageFile":Ljava/io/File;
    goto/16 :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 13
    .param p1, "params"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .prologue
    .line 528
    const-string v9, "SaveImageInBackgroundTask"

    const-string v10, "SaveImageInBackgroundTask setProcessForeground onPostExecute"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 533
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 534
    const-string v9, "SaveImageInBackgroundTask"

    const-string v10, "SaveImageInBackgroundTask isCancelled setProcessForeground false"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 538
    :goto_0
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 539
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 540
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 646
    :goto_1
    return-void

    .line 546
    :cond_0
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 548
    .local v8, "r":Landroid/content/res/Resources;
    iget v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v9, :cond_2

    .line 550
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    const v11, 0x7f0d020e

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 639
    :cond_1
    :goto_2
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 640
    const-string v9, "SaveImageInBackgroundTask"

    const-string v10, "SaveImageInBackgroundTask setProcessForeground false"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 644
    :goto_3
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 645
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    goto :goto_1

    .line 557
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v3, "launchIntent":Landroid/content/Intent;
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v10, "image/png"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 563
    .local v6, "now":J
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v10, 0x7f0d020b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f0d020c

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v3, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 571
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    const v10, 0x7f0d020b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f0d020c

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v3, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 578
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 580
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 581
    .local v4, "n":Landroid/app/Notification;
    iget v9, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v9, v9, -0x21

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 582
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v9, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 586
    invoke-direct {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isEasyModeEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "edit_after_screen_capture"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_1

    .line 589
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 590
    .local v5, "pM":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 591
    .local v1, "directEditIntent":Landroid/content/Intent;
    const-string v9, "%s/%s/"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v12}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "Screenshots"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "imageDirPath":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 605
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    const-string v9, "com.sec.android.mimage.photoretouching"

    const-string v10, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 608
    const-string v9, "android.intent.action.EDIT"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 610
    const/high16 v9, 0x10000000

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 611
    const v9, 0x8000

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 612
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v10, "image/png"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string v9, "degree"

    iget v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 614
    const-string v9, "isBasedLandscape"

    iget-boolean v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    const-string v9, "savepath"

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 631
    :goto_4
    :try_start_2
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 632
    :catch_0
    move-exception v9

    goto/16 :goto_2

    .line 618
    :cond_4
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const-string v9, "FilePath"

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v9, "DirPath"

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v9, "degree"

    iget v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDegree:F

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 622
    const-string v9, "isBasedLandscape"

    iget-boolean v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 623
    const-string v9, "savepath"

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const-class v10, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 626
    const/high16 v9, 0x10000000

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_4

    .line 641
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "directEditIntent":Landroid/content/Intent;
    .end local v2    # "imageDirPath":Ljava/lang/String;
    .end local v3    # "launchIntent":Landroid/content/Intent;
    .end local v4    # "n":Landroid/app/Notification;
    .end local v5    # "pM":Landroid/content/pm/PackageManager;
    .end local v6    # "now":J
    :catch_1
    move-exception v9

    goto/16 :goto_3

    .line 535
    .end local v8    # "r":Landroid/content/res/Resources;
    :catch_2
    move-exception v9

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
