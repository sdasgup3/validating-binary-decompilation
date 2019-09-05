void leaf() {
  __asm__("cmovngq %rcx, %rbx");
  }

void main() {
  leaf();
}