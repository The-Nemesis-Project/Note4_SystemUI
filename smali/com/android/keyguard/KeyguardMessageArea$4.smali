.class Lcom/android/keyguard/KeyguardMessageArea$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardMessageArea;->hideMessage(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea$4;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$4;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 408
    return-void
.end method
