import 'package:bookly/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({super.key});
  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  final ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;
  final int _itemsCount = 15; // number of items (books)
  late double _itemWidth; // full width of each item (accounting separatorWidth)
  late double _normalItemHeight; // tall of not focused item
  late double _focusedItemHeight; // tall of focused item

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final screenHeight = MediaQuery.of(context).size.height;
    const aspectRatio = 2.75 / 4; //aspectRatio of image in each item
    const separatorWidth = 14.0; //space between each item

    _normalItemHeight = screenHeight * .28;
    _focusedItemHeight = screenHeight * .32;
    final normalWidth =
        _normalItemHeight *
        aspectRatio; // item width according to screen hirht and aspectRatio
    _itemWidth = normalWidth + separatorWidth;
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          (MediaQuery.of(context).size.height * .32) +
          10, // Parent must be at least as tall as focused item
      child: ListView.separated(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: _itemsCount,
        separatorBuilder: (_, _) => const SizedBox(width: 14),
        itemBuilder: (context, index) {
          final isFocused = index == _currentIndex;
          final currentHeight = isFocused
              ? _focusedItemHeight
              : _normalItemHeight;
          return Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: currentHeight,
              child: const FeaturedListViewItem(),
            ),
          );
        },
      ),
    );
  }

  void _onScroll() {
    final offset = _scrollController.offset;
    final newIndex = (offset / _itemWidth).clamp(0, _itemsCount - 1).round();

    if (newIndex != _currentIndex && newIndex >= 0 && newIndex < _itemsCount) {
      setState(() => _currentIndex = newIndex);
    }
  }
}
