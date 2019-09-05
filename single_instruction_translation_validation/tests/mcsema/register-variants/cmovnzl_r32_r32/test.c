void leaf() {
  __asm__("cmovnzl %ecx, %ebx");
  }

void main() {
  leaf();
}