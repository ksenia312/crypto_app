import 'package:crypto_app/shared/gen/assets.gen.dart';
import 'package:crypto_app/shared/localization/strings.dart';
import 'package:flutter/material.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({
    super.key,
    required this.isEnabled,
    required this.onChanged,
  });

  final bool isEnabled;
  final ValueChanged<String> onChanged;

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  late final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void initState() {
    _controller.addListener(() {
      widget.onChanged(_controller.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: ColoredBox(
        color: Theme.of(context).inputDecorationTheme.fillColor ?? Colors.transparent,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Assets.search.svg(
                colorFilter: widget.isEnabled
                    ? null
                    : ColorFilter.mode(
                        Theme.of(context).colorScheme.secondary,
                        BlendMode.srcIn,
                      ),
              ),
            ),
            Expanded(
              child: TextFormField(
                controller: _controller,
                focusNode: _focusNode,
                enabled: widget.isEnabled,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                decoration: InputDecoration(
                  isDense: false,
                  hintText: Strings.value('Search...'),
                  contentPadding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                ),
              ),
            ),
            if (_controller.text.isNotEmpty)
              IconButton(
                onPressed: () {
                  _controller.clear();
                  _focusNode.unfocus();
                },
                icon: Assets.cross.svg(),
              ),
          ],
        ),
      ),
    );
  }
}
