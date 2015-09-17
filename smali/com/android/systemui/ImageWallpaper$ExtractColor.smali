.class Lcom/android/systemui/ImageWallpaper$ExtractColor;
.super Ljava/lang/Object;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExtractColor"
.end annotation


# static fields
.field static mDefaultColor:I

.field static mLimittedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xff

    const/16 v1, 0xc8

    const/16 v0, 0x6e

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/systemui/ImageWallpaper$ExtractColor;->mDefaultColor:I

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/systemui/ImageWallpaper$ExtractColor;->mLimittedColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 45

    const-wide/16 v38, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v28, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v33

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x42c80000    # 100.0f

    div-float v42, v42, v43

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v32, v0

    :goto_0
    if-gtz v32, :cond_0

    const/16 v32, 0x1

    :cond_0
    const/4 v5, 0x0

    const/16 v40, 0x0

    :goto_1
    move/from16 v0, v40

    move/from16 v1, v33

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v42

    move/from16 v0, v42

    int-to-long v10, v0

    add-long v38, v38, v10

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v42

    move/from16 v0, v42

    int-to-long v8, v0

    add-long v36, v36, v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v42

    move/from16 v0, v42

    int-to-long v6, v0

    add-long v34, v34, v6

    const-wide/16 v42, 0x1

    add-long v28, v28, v42

    cmp-long v42, v26, v10

    if-gtz v42, :cond_1

    const-wide/16 v42, 0x0

    cmp-long v42, v26, v42

    if-nez v42, :cond_2

    :cond_1
    move-wide/from16 v26, v10

    :cond_2
    cmp-long v42, v24, v8

    if-gtz v42, :cond_3

    const-wide/16 v42, 0x0

    cmp-long v42, v24, v42

    if-nez v42, :cond_4

    :cond_3
    move-wide/from16 v24, v8

    :cond_4
    cmp-long v42, v22, v6

    if-gtz v42, :cond_5

    const-wide/16 v42, 0x0

    cmp-long v42, v22, v42

    if-nez v42, :cond_6

    :cond_5
    move-wide/from16 v22, v6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    add-int v41, v41, v32

    goto :goto_2

    :cond_7
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x42c80000    # 100.0f

    div-float v42, v42, v43

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v32, v0

    goto :goto_0

    :cond_8
    add-int v40, v40, v32

    goto :goto_1

    :cond_9
    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    div-long v42, v38, v28

    move-wide/from16 v0, v42

    long-to-int v15, v0

    div-long v42, v36, v28

    move-wide/from16 v0, v42

    long-to-int v14, v0

    div-long v42, v34, v28

    move-wide/from16 v0, v42

    long-to-int v13, v0

    int-to-long v0, v15

    move-wide/from16 v42, v0

    cmp-long v42, v42, v26

    if-lez v42, :cond_b

    int-to-long v0, v15

    move-wide/from16 v42, v0

    sub-long v42, v42, v26

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v42, v19, 0x2

    sub-int v16, v15, v42

    :goto_3
    int-to-long v0, v14

    move-wide/from16 v42, v0

    cmp-long v42, v42, v24

    if-lez v42, :cond_c

    int-to-long v0, v14

    move-wide/from16 v42, v0

    sub-long v42, v42, v24

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v42, v19, 0x2

    sub-int v18, v14, v42

    :goto_4
    int-to-long v0, v13

    move-wide/from16 v42, v0

    cmp-long v42, v42, v22

    if-lez v42, :cond_d

    int-to-long v0, v13

    move-wide/from16 v42, v0

    sub-long v42, v42, v22

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v42, v19, 0x2

    sub-int v17, v13, v42

    :goto_5
    const/16 v42, 0xff

    move/from16 v0, v42

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v21

    sget v42, Lcom/android/systemui/ImageWallpaper$ExtractColor;->mLimittedColor:I

    move/from16 v0, v21

    move/from16 v1, v42

    if-le v0, v1, :cond_a

    sget v21, Lcom/android/systemui/ImageWallpaper$ExtractColor;->mDefaultColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_6
    return v21

    :cond_b
    move/from16 v16, v15

    goto :goto_3

    :cond_c
    move/from16 v18, v14

    goto :goto_4

    :cond_d
    move/from16 v17, v13

    goto :goto_5

    :catch_0
    move-exception v12

    const-string v42, "ImageWallpaper"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Exception = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    goto :goto_6
.end method

.method public static setDefaultColor(I)V
    .locals 1

    sget v0, Lcom/android/systemui/ImageWallpaper$ExtractColor;->mDefaultColor:I

    if-eq p0, v0, :cond_0

    sput p0, Lcom/android/systemui/ImageWallpaper$ExtractColor;->mDefaultColor:I

    :cond_0
    return-void
.end method
