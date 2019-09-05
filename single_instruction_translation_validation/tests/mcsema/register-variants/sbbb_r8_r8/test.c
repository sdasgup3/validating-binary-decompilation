void leaf() {
  __asm__("sbbb %cl, %bl");
  }

void main() {
  leaf();
}