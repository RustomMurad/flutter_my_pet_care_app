import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_pets_care_app/models/mypet.dart';

final formatter = DateFormat.yMd();

class NewPet extends StatefulWidget {
  const NewPet({super.key, required this.onAddNewPet});

  final void Function(MyPet mypet) onAddNewPet;

  @override
  State<NewPet> createState() {
    return _NewPetState();
  }
}

class _NewPetState extends State<NewPet> {
  final _nameController = TextEditingController();
  final _weightController = TextEditingController();
  final _breedController = TextEditingController();
  DateTime? _selectedDate;
  Gender _selectedGender = Gender.she;

  void _submitPetData() {
    final _enteredWeight = double.tryParse((_weightController.text));
    final weightIsInvalid = _enteredWeight == null || _enteredWeight <= 0;
    if (_nameController.text.trim().isEmpty ||
        _breedController.text.trim().isEmpty ||
        weightIsInvalid ||
        _selectedDate == null) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Invalid Input'),
          content: Text('Please make sure all valid pet data was entered.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: Text('Okay'),
            )
          ],
        ),
      );
      return;
    }
    widget.onAddNewPet(MyPet(
        name: _nameController.text,
        breed: _breedController.text,
        dob: _selectedDate!,
        sex: _selectedGender,
        weight: _enteredWeight,
        image: 'image',
        imageType: 'imageType',
        avatar: 'avatar',
        kind: Kind.bird,
        route: 'route'));
    Navigator.pop(context);
  }

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 10, now.month, now.day);
    final pickedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now);
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 48, 16, 16),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Title(
              color: Colors.black,
              child: Text(
                'Add New Pet',
                style: TextStyle(fontSize: 22),
              ),
            ),
        
            // SizedBox(height: 48,),
            // Text('Add New Pet'),
            // SizedBox(height: 16,),
            TextField(
              controller: _nameController,
              maxLength: 30,
              decoration: InputDecoration(
                label: Text('Name'),
              ),
            ),
            TextField(
              controller: _breedController,
              maxLength: 30,
              decoration: InputDecoration(
                label: Text('Breed'),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      suffix: Text(' lb'),
                      label: Text('Weight'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(_selectedDate == null
                          ? 'No Birhday selected'
                          : formatter.format(_selectedDate!)),
                      IconButton(
                        onPressed: _presentDatePicker,
                        icon: Icon(Icons.calendar_month),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                DropdownButton(
                    value: _selectedGender,
                    items: Gender.values
                        .map(
                          (sex) => DropdownMenuItem(
                            value: sex,
                            child: Text(
                              sex.name.toUpperCase(),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        if (value == null) {
                          return;
                        }
                        _selectedGender = value;
                      });
                    }),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: _submitPetData,
                  child: Text('Add New Pet'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
