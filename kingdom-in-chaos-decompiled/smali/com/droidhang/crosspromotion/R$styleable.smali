.class public final Lcom/droidhang/crosspromotion/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhang/crosspromotion/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RatioImageView:[I

.field public static final RatioImageView_adjustWidth:I = 0x1

.field public static final RatioImageView_aspectRatio:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/droidhang/crosspromotion/R$styleable;->RatioImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
