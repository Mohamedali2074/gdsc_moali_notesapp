import 'package:flutter/material.dart';
import 'package:gdsc_moali_notesapp/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: yellow,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 40,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 48),
              HeaderText(),
              SizedBox(height: 32),
              CustomSearchBar(),
              SizedBox(height: 32),
              NotesListView(),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Notepad',
      style: TextStyle(
        fontFamily: FontConstants.myriadproFont,
        fontSize: 37,
      ),
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          labelText: 'Search notes',
          labelStyle: TextStyle(
              fontFamily: FontConstants.myriadproFont,
              color: Colors.black.withOpacity(0.35)),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black.withOpacity(0.35),
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(26),
    borderSide: const BorderSide(color: Colors.black),
  );
}

class NoteItem extends StatelessWidget {
  const NoteItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 95,
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Todays grocery list',
            style: TextStyle(
              fontFamily: FontConstants.myriadproFont,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'June 26, 2022 08:05 PM',
            style: TextStyle(
              color: Colors.black.withOpacity(.7),
              fontSize: 14,
              fontFamily: FontConstants.myriadproFont,
            ),
          ),
        ],
      ),
    );
  }
}

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}
