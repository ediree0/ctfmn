.class public final Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "PasswordViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u000bH\u0002J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000bR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "decrypt",
        "",
        "cipherText",
        "",
        "key",
        "Ljavax/crypto/SecretKey;",
        "IV",
        "hash",
        "data",
        "submit",
        "",
        "password",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 26
    sget-object v0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState$Idle;->INSTANCE:Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState$Idle;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 27
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final synthetic access$get_state$p(Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 25
    iget-object p0, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method private final decrypt([BLjavax/crypto/SecretKey;[B)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 34
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 35
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p2

    const-string v2, "AES"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 36
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p3, 0x2

    .line 37
    check-cast v1, Ljava/security/Key;

    check-cast p2, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, p3, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 38
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string p2, "decryptedText"

    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final hash(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "SHA-256"

    .line 30
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const-string v0, "getInstance(\"SHA-256\").digest(data.toByteArray())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final submit(Ljava/lang/String;)V
    .locals 8

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState$Success;

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState$Invalid;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState$Idle;->INSTANCE:Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState$Idle;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 54
    :cond_1
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^\\d{5}$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v0, ""

    invoke-static {p1, v0}, Lmn/haruulzangi/composeyourflag/core/PbkdfKt;->pbkdf2Verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "71ec232b36a74564:4bdea2f4edd6100523e09510d688088470e29cb029e87f3b4d0542207429dec9"

    .line 63
    invoke-static {p1, v0}, Lmn/haruulzangi/composeyourflag/core/PbkdfKt;->pbkdf2Verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    iget-object p1, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState$Invalid;->INSTANCE:Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState$Invalid;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 65
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance p1, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel$submit$2;

    invoke-direct {p1, p0, v1}, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel$submit$2;-><init>(Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_3
    const-string v0, "fc8ff8aa18b06535fff4889c5943ae1e1827b208657e2d9525c3fce6aaa942f0aa5923df1e0caf9ab68adc02338c2dbb"

    .line 72
    invoke-static {v0}, Lmn/haruulzangi/composeyourflag/utils/HexKt;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 73
    invoke-direct {p0, p1}, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;->hash(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v2, 0x10

    invoke-static {p1, v2}, Lkotlin/collections/ArraysKt;->take([BI)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v1}, Lmn/haruulzangi/composeyourflag/utils/CryptoKt;->asSecretKey$default([BLjava/lang/String;ILjava/lang/Object;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const-string v1, "9465ed0e693017a5d54ed2346616d6ac"

    .line 74
    invoke-static {v1}, Lmn/haruulzangi/composeyourflag/utils/HexKt;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 76
    invoke-direct {p0, v0, p1, v1}, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;->decrypt([BLjavax/crypto/SecretKey;[B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState$Success;

    invoke-direct {v1, p1}, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState$Success;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_4
    :goto_0
    iget-object p1, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState$Invalid;->INSTANCE:Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState$Invalid;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 56
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance p1, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel$submit$1;

    invoke-direct {p1, p0, v1}, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel$submit$1;-><init>(Lmn/haruulzangi/composeyourflag/ui/screens/PasswordViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
