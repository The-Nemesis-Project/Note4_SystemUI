.class Lcom/android/keyguard/NumPadKey$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "NumPadKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/NumPadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/NumPadKey;


# direct methods
.method constructor <init>(Lcom/android/keyguard/NumPadKey;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/NumPadKey$2;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$2;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    # setter for: Lcom/android/keyguard/NumPadKey;->mNumericThemeTypeface:Landroid/graphics/Typeface;
    invoke-static {v0, v1}, Lcom/android/keyguard/NumPadKey;->access$302(Lcom/android/keyguard/NumPadKey;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$2;->this$0:Lcom/android/keyguard/NumPadKey;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/NumPadKey;->mNumericThemeTypeface:Landroid/graphics/Typeface;
    invoke-static {v0, v1}, Lcom/android/keyguard/NumPadKey;->access$302(Lcom/android/keyguard/NumPadKey;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method
