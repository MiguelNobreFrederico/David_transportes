class TransRequest {
  //Singleton
  static final TransRequest _instance = TransRequest._();
  TransRequest._();

  factory TransRequest() => _instance;

  //Propriedadas
  final Map<String, int> _requestedItems = {};
  List<String> get requestedItems => _requestedItems.entries
      .map((e) => "**Carga:** ${e.value}x ${e.key}")
      .toList();

  String? name;
  String? phoneNumber;
  String? addressWithdrawal;
  String? numberComplementWithdrawal;
  String? neighborhoodWithdrawal;
  String? cityWithdrawal;
  String? addressDelivery;
  String? numberComplementDelivery;
  String? neighborhoodDelivery;
  String? cityDelivery;

  //Metodos Publicos

  addItem(int quantity, String name) {
    _requestedItems[name] = quantity;
  }

  String toMessage() {
    if (_requestedItems.isEmpty) {
      return 'Olá, eu gostaria de mais informações sobre seus serviços.';
    }

    return [
      ...requestedItems,
      "",
      ..._withdrawalAddress,
      ..._deliveryAddress,
      ..._deliveryName,
    ].join('\n');
  }

  Uri toWhatsappUri(String whatsappNumber) {
    return Uri.parse(
        "whatsapp://send?phone=$whatsappNumber&text=${Uri.encodeComponent(toMessage())}");
  }

  Uri toWhatsappUrlWeb(String whatsappNumber) {
    return Uri.parse(
        "https://web.whatsapp.com/send?phone=$whatsappNumber&text=${Uri.encodeComponent(toMessage())}");
  }

  //Getters
  List<String> get _withdrawalAddress {
    if (addressWithdrawal == null ||
        numberComplementWithdrawal == null ||
        neighborhoodWithdrawal == null ||
        cityWithdrawal == null) {
      return [];
    } else {
      return [
        "",
        "**Endereço Retirada:**",
        "**Rua:** $addressWithdrawal",
        "**Numero/Complemento:** $numberComplementWithdrawal",
        "**Bairro:** $neighborhoodWithdrawal",
        "**Cidade** $cityWithdrawal"
            "",
      ];
    }
  }

  List<String> get _deliveryAddress {
    if (addressDelivery == null ||
        numberComplementDelivery == null ||
        neighborhoodDelivery == null ||
        cityDelivery == null) {
      return [];
    } else {
      return [
        "",
        "**Endereço Entrega:**",
        "**Rua:** $addressDelivery",
        "**Numero/Complemento:** $numberComplementDelivery",
        "**Bairro:** $neighborhoodDelivery",
        "**Cidade** $cityDelivery"
            "",
      ];
    }
  }

  List<String> get _deliveryName {
    if (name == null || phoneNumber == null) {
      return [];
    } else {
      return [
        "",
        "**Procurar por:**($name)",
        "**Telefone:** $phoneNumber",
        "",
      ];
    }
  }
}
