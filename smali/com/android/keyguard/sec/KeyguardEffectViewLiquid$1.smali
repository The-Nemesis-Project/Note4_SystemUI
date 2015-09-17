.class Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewLiquid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;)Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/liquid/LiquidEffect;->cleanUp()V

    .line 127
    return-void
.end method
