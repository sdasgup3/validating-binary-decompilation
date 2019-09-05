void leaf() {
  __asm__("cmovnpq %rcx, %rbx");
  }

void main() {
  leaf();
}