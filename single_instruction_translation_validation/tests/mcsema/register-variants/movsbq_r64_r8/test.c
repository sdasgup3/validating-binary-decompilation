void leaf() {
  __asm__("movsbq %cl, %rbx");
  }

void main() {
  leaf();
}