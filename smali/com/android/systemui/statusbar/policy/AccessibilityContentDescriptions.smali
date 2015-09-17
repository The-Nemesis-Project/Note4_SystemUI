.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    return-void

    :array_0
    .array-data 4
        0x7f0d0243
        0x7f0d0244
        0x7f0d0245
        0x7f0d0246
        0x7f0d0249
    .end array-data

    :array_1
    .array-data 4
        0x7f0d024a
        0x7f0d024b
        0x7f0d024c
        0x7f0d024d
        0x7f0d024e
    .end array-data

    :array_2
    .array-data 4
        0x7f0d0250
        0x7f0d0251
        0x7f0d0252
        0x7f0d0253
        0x7f0d0254
    .end array-data

    :array_3
    .array-data 4
        0x7f0d0257
        0x7f0d0258
        0x7f0d0259
        0x7f0d025a
        0x7f0d025b
    .end array-data

    :array_4
    .array-data 4
        0x7f0d0243
        0x7f0d0244
        0x7f0d0245
        0x7f0d0246
        0x7f0d0247
        0x7f0d0249
    .end array-data

    :array_5
    .array-data 4
        0x7f0d0243
        0x7f0d0244
        0x7f0d0245
        0x7f0d0246
        0x7f0d0247
        0x7f0d0248
        0x7f0d0249
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
