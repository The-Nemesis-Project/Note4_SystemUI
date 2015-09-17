.class public Lcom/android/keyguard/sec/ExtractColor;
.super Ljava/lang/Object;
.source "ExtractColor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 40

    const-wide/16 v34, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v29

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    :goto_0
    if-gtz v28, :cond_0

    const/16 v28, 0x1

    :cond_0
    const/16 v36, 0x0

    :goto_1
    move/from16 v0, v36

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v10, v0

    add-long v34, v34, v10

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v8, v0

    add-long v32, v32, v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v6, v0

    add-long v30, v30, v6

    const-wide/16 v38, 0x1

    add-long v26, v26, v38

    cmp-long v38, v24, v10

    if-gtz v38, :cond_1

    const-wide/16 v38, 0x0

    cmp-long v38, v24, v38

    if-nez v38, :cond_2

    :cond_1
    move-wide/from16 v24, v10

    :cond_2
    cmp-long v38, v22, v8

    if-gtz v38, :cond_3

    const-wide/16 v38, 0x0

    cmp-long v38, v22, v38

    if-nez v38, :cond_4

    :cond_3
    move-wide/from16 v22, v8

    :cond_4
    cmp-long v38, v20, v6

    if-gtz v38, :cond_5

    const-wide/16 v38, 0x0

    cmp-long v38, v20, v38

    if-nez v38, :cond_6

    :cond_5
    move-wide/from16 v20, v6

    :cond_6
    add-int v37, v37, v28

    goto :goto_2

    :cond_7
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    goto :goto_0

    :cond_8
    add-int v36, v36, v28

    goto :goto_1

    :cond_9
    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    div-long v38, v34, v26

    move-wide/from16 v0, v38

    long-to-int v13, v0

    div-long v38, v32, v26

    move-wide/from16 v0, v38

    long-to-int v12, v0

    div-long v38, v30, v26

    move-wide/from16 v0, v38

    long-to-int v5, v0

    int-to-long v0, v13

    move-wide/from16 v38, v0

    cmp-long v38, v38, v24

    if-lez v38, :cond_a

    int-to-long v0, v13

    move-wide/from16 v38, v0

    sub-long v38, v38, v24

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v38, v17, 0x2

    sub-int v14, v13, v38

    :goto_3
    int-to-long v0, v12

    move-wide/from16 v38, v0

    cmp-long v38, v38, v22

    if-lez v38, :cond_b

    int-to-long v0, v12

    move-wide/from16 v38, v0

    sub-long v38, v38, v22

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v38, v17, 0x2

    sub-int v16, v12, v38

    :goto_4
    int-to-long v0, v5

    move-wide/from16 v38, v0

    cmp-long v38, v38, v20

    if-lez v38, :cond_c

    int-to-long v0, v5

    move-wide/from16 v38, v0

    sub-long v38, v38, v20

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v38, v17, 0x2

    sub-int v15, v5, v38

    :goto_5
    const/16 v38, 0xff

    move/from16 v0, v38

    move/from16 v1, v16

    invoke-static {v0, v14, v1, v15}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    :goto_6
    return v19

    :cond_a
    move v14, v13

    goto :goto_3

    :cond_b
    move/from16 v16, v12

    goto :goto_4

    :cond_c
    move v15, v5

    goto :goto_5

    :catch_0
    move-exception v38

    const/16 v19, 0x0

    goto :goto_6
.end method
