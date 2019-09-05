void leaf() {
  __asm__("cmovnbeq %rcx, %rbx");
  }

void main() {
  leaf();
}